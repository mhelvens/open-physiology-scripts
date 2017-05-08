import GitHubApi from 'github';
import inquirer  from 'inquirer';

import {jsonParseOrNull} from './util.js';

const OWNER        = 'open-physiology';
const CENTRAL_REPO = 'open-physiology';

const REPOS = [
	'open-physiology-manifest',
    'open-physiology-model',
    'lyph-server',
    'nested-resource-editor',
    'lyph-edit-widget',
    'prototype-application',
    'utilities',
    'boxer',
    'project-template'
];

(async () => {
    
	/* connect to github */
	const github = new GitHubApi({
	    debug: false,
	    protocol: 'https',
	    host: 'api.github.com',
	    headers: {
	        'user-agent': 'Open-Physiology-GitHub-Scripts'
	    },
	    Promise: Promise,
	    timeout: 5000
	});
	
	/* ask for username and password */
	const {repo, username, password} = await inquirer.prompt([
        { name: 'username', type: 'input',    message: "username =" },
        { name: 'password', type: 'password', message: "password =" }
    ]);
	
	/* authenticate to github */
	github.authenticate({
	    type: "basic",
	    username,
	    password
	});
	
	/* get milestones */
	let milestones = (await github.issues.getMilestones({
		owner:    OWNER,
		repo:     CENTRAL_REPO,
		per_page: 100
	})).data;
	
	for (let repo of REPOS) {
		
		
		/* get specific milestones */
		let specMilestones = (await github.issues.getMilestones({
			owner:    OWNER,
			repo:     repo,
			per_page: 100
		})).data;
		
		let milestonesByTitle = {};
		for (let milestone of milestones) {
			milestonesByTitle[milestone.title] = milestone;
		}
		
		/* set milestones */
		await Promise.all(specMilestones.map(async ({number, title}) => {
			const milestone = milestonesByTitle[title];
			if (!milestone) {
				await github.issues.deleteMilestone({
					owner: OWNER, repo, number
				});
				console.log("Deleted:", repo, number, title)
			} else {
				const {state, description, due_on} = milestone;
				await github.issues.updateMilestone({
					owner: OWNER, repo, number,
					title, state, description, due_on
				});
				console.log("Updated:", repo, number, title)
			}
		}));
		
	}
	
})().then(() => {
	
	console.log('DONE');
	
}, (error) => {
	
	console.log('ERROR', error);
	
});




