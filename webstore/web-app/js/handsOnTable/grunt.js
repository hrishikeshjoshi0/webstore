/**
 * This file is used to build ``jquery.handsontable.js` from `src/*`
 *
 * Usage: Install Grunt, then go to repo main directory and execute `grunt`
 * To execute automatically after each change, execute `grunt --force default watch`
 *
 * See https://github.com/cowboy/grunt for more information
 */
module.exports = function (grunt) {
  grunt.initConfig({
    concat: {
      dist: {
        src: [
          'src/core.js',
          'src/undoRedo.js',
          'src/blockedRows.js',
          'src/blockedCols.js',
          'src/rowHeader.js',
          'src/colHeader.js',
          'src/jquery.mousewheel.js'
        ],
        dest: 'jquery.handsontable.js'
      }
    },
    watch: {
      files: ['<config:concat.dist.src>'],
      tasks: 'concat'
    }
  });

  // Default task.
  grunt.registerTask('default', 'concat');
};