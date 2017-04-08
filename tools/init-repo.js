import GitHubApi from 'github';
import inquirer  from 'inquirer';

import {jsonParseOrNull} from './util.js';

const OWNER        = 'open-physiology';
const CENTRAL_REPO = 'open-physiology';

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
        { name: 'password', type: 'password', message: "password =" },
		{ name: 'repo',     type: 'input',    message: "    repo =" }
    ]);
	
	/* authenticate to github */
	github.authenticate({
	    type: "basic",
	    username,
	    password
	});
	
	/* get labels */
	let labels = (await github.issues.getLabels({
		owner:    OWNER,
		repo:     CENTRAL_REPO,
		per_page: 100
	})).data;
	
	/* set labels */
	let labelResponses = await Promise.all(labels.map(({name, color}) => github.issues.createLabel({
		owner: OWNER, repo,
		name, color
	}).catch((error) => {
		const details = jsonParseOrNull(error.message);
		if (details && details.errors.length === 1 && details.errors[0].code === 'already_exists') { return null }
		throw error;
	})));
	
	/* get milestones */
	let milestones = (await github.issues.getMilestones({
		owner:    OWNER,
		repo:     CENTRAL_REPO,
		per_page: 100
	})).data;
	
	/* set milestones */
	let milestoneResponses = await Promise.all(milestones.map(({title, state, description, due_on}) => github.issues.createMilestone({
		owner: OWNER, repo,
		title, state, description, due_on
	}).catch((error) => {
		const details = jsonParseOrNull(error.message);
		if (details && details.errors.length === 1 && details.errors[0].code === 'already_exists') { return null }
		throw error;
	})));
	
})().then(() => {
	
	console.log('DONE');
	
}, (error) => {
	
	console.log('ERROR', error);
	
});




