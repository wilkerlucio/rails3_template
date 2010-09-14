# download qunit files
get "http://github.com/jquery/qunit/raw/master/qunit/qunit.js", "public/javascripts/vendor/qunit.js"
get "http://github.com/jquery/qunit/raw/master/qunit/qunit.css", "public/stylesheets/vendor/qunit.css"

@delayed << lambda {
  # generate controller for qunit
  generate "controller qunit index"

  # replace view
  get "#{File.dirname(__FILE__)}/resources/qunit.html.erb", "app/views/qunit/index.html.erb", :force => true

  # configure route
  gsub_file "config/routes.rb", %{get "qunit/index"}, %{get "qunit" => "qunit#index" if Rails.env.development?}
}
