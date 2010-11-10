@template_path = File.dirname(__FILE__)
@args = $*

scripts = []

# clean up for start
scripts << "cleanup"

# testing setup
scripts << "rspec"
scripts << "steak"
scripts << "database_cleaner"
scripts << "factory_girl"

# database
scripts << "mongoid"

# productivity boost
scripts << "inherited_resources"
scripts << "simple_form"

# front-end things
scripts << "barista"
scripts << "jammit"
scripts << "jquery"
scripts << "underscore"
scripts << "jcheck"
scripts << "qunit"

# deploy
# scripts << "capistrano"

# bundler
scripts << "bundler"

# start git project
scripts << "git"

# execute scripts
scripts.each do |script|
  apply "#{@template_path}/#{script}.rb" unless @args.include? "--skip-#{script}"
end
