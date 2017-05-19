module.exports = [
	{
		test: /\.js$/,
		exclude: /node_modules/,
		loader: 'babel-loader'
	},
	{
		test: /\.json$/,
		loader: 'json-loader'
	},
	{
		test: /\.txt$/,
		loader: 'raw-loader'
	},
	{
		test: /node_modules[\/\\](utilities|open-physiology-model)[\/\\]src[\/\\].*\.js$/,
		loader: 'babel-loader'
	}
];
