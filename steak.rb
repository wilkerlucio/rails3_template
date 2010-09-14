# setup steak and capybara gems
gem 'steak', :git => "git://github.com/cavalle/steak.git", :ref => "4956708bfe57c48991c3", :group => :test
gem 'capybara', '0.3.9', :group => :test

@delayed << lambda {
  # setup steak
  generate "steak:install"
}
