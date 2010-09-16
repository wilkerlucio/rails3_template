# setup simple_form gem
gem 'simple_form', '1.2.2'

@delayed << lambda {
  generate "simple_form:install"
  
  get "#{File.dirname(__FILE__)}/resources/_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb", :force => true
  get "#{File.dirname(__FILE__)}/resources/_form_errors.html.erb", "app/views/layouts/_form_errors.html.erb"
}
