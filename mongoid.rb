# setup mongoid gem
gem 'bson_ext', '1.1.2'
gem 'mongoid', '>=2.0.0.beta.20'
gem 'remarkable_mongoid', :group => :test

# append generator
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.orm :mongoid\n"
end

# remove old database configuration
remove_file "config/database.yml"

# insert mongoid configuration file
get "#{File.dirname(__FILE__)}/resources/mongoid.yml", "config/mongoid.yml"

# remove activerecord railtie require
gsub_file "config/application.rb", %{require "active_record/railtie"\n}, ""
