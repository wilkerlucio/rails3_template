# setup steak and capybara gems
gem 'steak', '>= 1.0.0.rc.1', :group => :test
gem 'capybara', :group => :test

@delayed << lambda {
  # setup steak
  generate "steak:install"
}
