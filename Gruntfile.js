'use strict';
/* jshint node: true */

module.exports = function (grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    jshint: {
      all: [
        "app/**/*.js",
        "!app/assets/javascripts/vendor/**/*.js",
      ],
      options: {
        reporter: require('jshint-stylish'),
        jshintrc: '.jshintrc'
      },
    }
  });

  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.registerTask('test', ['jshint']);
  grunt.registerTask('default', ['test']);
};
