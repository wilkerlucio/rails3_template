# setup jcheck_rails gem
gem 'jcheck_rails'

@delayed << lambda {
  # download front-end files
  rake 'jcheck:setup'

  # place files in vendor
  run "mv public/javascripts/jcheck-* public/javascripts/vendor/jcheck.js"
  run "mv public/stylesheets/jcheck.css public/stylesheets/vendor/jcheck.css"
}
