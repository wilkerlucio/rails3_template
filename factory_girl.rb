# setup factory girl gem
gem 'factory_girl', '1.3.2'

# configure factory girl generator
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.fixture_replacement :factory_girl, :dir => '#{@use_rspec ? "spec/factories" : "test/factories"}'\n"
end
