@template_path = File.dirname(__FILE__)

# clean up for start
apply "#{@template_path}/cleanup.rb"

# testing setup
apply "#{@template_path}/rspec.rb"
apply "#{@template_path}/steak.rb"
apply "#{@template_path}/database_cleaner.rb"
apply "#{@template_path}/factory_girl.rb"

# database
apply "#{@template_path}/mongoid.rb"

# productivity boost
apply "#{@template_path}/inherited_resources.rb"
apply "#{@template_path}/simple_form.rb"

# front-end things
apply "#{@template_path}/barista.rb"
apply "#{@template_path}/jammit.rb"
apply "#{@template_path}/jquery.rb"
apply "#{@template_path}/underscore.rb"
apply "#{@template_path}/jcheck.rb"

# deploy
apply "#{@template_path}/capistrano.rb"

# bundler
apply "#{@template_path}/bundler.rb"

# start git project
apply "#{@template_path}/git.rb"
