module.exports = {
  output: {
    filename: './bundle.js',
    publicPath: 'http://localhost:5000/'
  },
  module: {
    loaders: [
      { test: /\.(coffee|cjsx)$/, loader: 'coffee-loader!cjsx-loader' },
      { test: /\.css$/, loader: 'style-loader!css-loader' },
      { test: /\.(png|jpg)$/, loader: 'url-loader?limit=8192' }
    ]
  },
  resolve: {
    extensions: [ '', '.js', '.json', '.coffee', '.jsx', '.cjsx' ]
  }
};
