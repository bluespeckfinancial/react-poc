webpackConfig = require './webpack.config'
gulp = require 'gulp'
gutil = require 'gulp-util'
jest = require 'gulp-jest'
webpack = require 'gulp-webpack'
coffeelint = require 'gulp-coffeelint'
transform = require 'gulp-coffee-react-transform'

gulp.task 'default', ['jest', 'webpack', 'watch-jest', 'watch-webpack']

gulp.task 'jest', ->
  gulp.src('./__tests__/').pipe jest
    scriptPreprocessor: './../preprocessor.js'
    unmockedModulePathPatterns: [
      "./node_modules/react"
    ]
    testFileExtensions: ["coffee"]

gulp.task 'watch-jest', ->
  gulp.watch ['app/**', '__tests__/**'], ['jest']

gulp.task 'webpack', ->
  gulp.src('app/main.coffee')
    .pipe(webpack(webpackConfig))
    .pipe(gulp.dest('build/'))

gulp.task 'watch-webpack', ['webpack'], ->
  gulp.watch ['app/**/*'], ['webpack']

gulp.task 'lint', ->
  gulp.src('app/**')
    # convert to coffeescript
    .pipe(transform().on('error', gutil.log))
    # coffeelint
    .pipe(coffeelint())
    .pipe(coffeelint.reporter())
