# blocks to execute after bundle_install
@delayed = []

# remove general files
remove_file "README"
remove_file "doc/"
remove_file "test/"
remove_file "public/index.html"
remove_file "public/favicon.ico"
remove_file "public/images/rails.png"

# remove javascript files
run "rm public/javascripts/*.js"

# create vendor directories for front-end files
run "mkdir public/javascripts/vendor"
run "mkdir public/stylesheets/vendor"

# cleanup gemfile, by removing all commented lines
gsub_file "Gemfile", /#.*\n/, "\n"
gsub_file "Gemfile", /\n+/, "\n"

# append basic generators section for application setup
application do
  (" " * 2) + "config.generators do |generator|\n" +
  (" " * 4) + "end\n"
end

# split rails require in separated packages
gsub_file "config/application.rb", "require 'rails/all'", %{require "active_record/railtie"\nrequire "action_controller/railtie"\nrequire "action_mailer/railtie"\nrequire "active_resource/railtie"}

# added lib folder to load path
inject_into_file "config/application.rb", :after => "config.autoload_paths += %W(\#{config.root}/extras)\n" do
  "    config.autoload_paths += %W(\#{config.root}/lib)\n"
end

# apply new layout
get "#{File.dirname(__FILE__)}/resources/application.html.erb", "app/views/layouts/application.html.erb", :force => true

# rails 3 generators gem
gem 'rails3-generators'
