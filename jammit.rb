# setup jammit gem
gem 'jammit', '0.5.1'

# setup jammit configuration
get "#{File.dirname(__FILE__)}/resources/assets.yml", "config/assets.yml"

# update application template file
gsub_file "app/views/layouts/application.html.erb", %{stylesheet_link_tag :all},         "include_stylesheets :workspace"
gsub_file "app/views/layouts/application.html.erb", %{javascript_include_tag :defaults}, "include_javascripts :workspace"
