var webpack           = require('webpack');
var loaders           = require('./webpack.loaders.js');

module.exports = {
	devtool: 'source-map',
	context: __dirname + '/converters',
	entry: {
		'index':   [ 'babel-polyfill', 'zone.js/dist/zone.js', './index.js' ],
		'open-physiology-converter': [ 'babel-polyfill', 'zone.js/dist/zone.js', './index.js' ],
		'open-physiology-converter': [ './index.js' ]
	},
	output: {
		path: __dirname + '/converters/dist',
		filename: '[name].js',
		library: 'open-physiology-converter',
		libraryTarget: 'umd',
		sourceMapFilename: '[file].map',
		/* source-map support for IntelliJ/WebStorm */
		devtoolModuleFilenameTemplate:         '[absolute-resource-path]',
		devtoolFallbackModuleFilenameTemplate: '[absolute-resource-path]?[hash]'
	},
	module: {
		loaders: loaders
	},
	plugins: [
		new webpack.optimize.OccurrenceOrderPlugin()
	]
};
