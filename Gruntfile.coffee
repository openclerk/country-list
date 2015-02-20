module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    clean:
      generated: ['country']

    copy:
      icu:
        files: [{
          expand: true
          cwd: 'vendor/umpirsky/country-list/country/icu/'
          src: ['??/*', '!**/*_*/**']
          dest: 'country'
        }]

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'

  grunt.registerTask 'default', ['clean', 'copy']
