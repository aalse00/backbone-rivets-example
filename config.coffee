# See docs at https://github.com/brunch/brunch/blob/stable/docs/config.md
exports.config =
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before: [
          'vendor/scripts/jquery.js'
          'vendor/scripts/underscore.js'
          'vendor/scripts/backbone.js'
          'vendor/scripts/bootstrap.min.js'
          'vendor/scripts/rivets.min.js'
        ]
    stylesheets:
      joinTo:
        'css/app.css': /^app(\/|\\)styles(\/|\\)/
        'css/vendor.css': /^vendor(\/|\\)styles/
    templates:
      joinTo: 'js/app.js'
  overrides:
    production:
      optimize: true
      sourceMaps: false
      plugins: autoReload: enabled: false      
