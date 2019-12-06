// ejected from codegen scripts
const nodeExternals = require('webpack-node-externals');
const path = require('path');

module.exports = {
  context: path.resolve(__dirname, 'src'),
  entry: {
    index: './index.ts',
    'schema-types': './schema-types.ts',
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].js',
    libraryTarget: 'commonjs'
  },
  mode: 'production',
  target: 'node',
  optimization: {
    minimize: false
  },
  externals: [
    nodeExternals(),
    'graphql',
    'graphql-codegen-core',
    'graphql-tag',
    'lodash',
    'graphql-codegen-plugin-helpers',
    'moment'
  ],
  resolve: {
    mainFields: ['browser', 'main', 'module'],
    extensions: ['.ts', '.tsx', '.js', '.jsx'],
    alias: {
      handlebars: 'handlebars/dist/handlebars.js'
    }
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: 'awesome-typescript-loader'
      },
      {
        test: /\.handlebars/,
        use: 'raw-loader'
      }
    ]
  }
};
