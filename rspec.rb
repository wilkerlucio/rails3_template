@use_rspec = true

# append generator
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.test_framework :rspec, :views => false\n"
end

# configure rspec gem
gem 'rspec-rails', '2.0.0.beta.20', :group => :test

@delayed << lambda {
  # generate
  generate "rspec:install"
  
  # rspec runner configuration
  get "#{File.dirname(__FILE__)}/resources/dot_rspec", ".rspec", :force => true
}

