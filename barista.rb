# setup barista gem
gem 'barista'

@delayed << lambda {
  # setup barista configuration
  generate 'barista_install'

  run 'mkdir app/coffeescripts'
  run 'touch app/coffeescripts/application.coffee'
}
