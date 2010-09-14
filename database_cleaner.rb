# setup database cleaner gem
gem 'database_cleaner', '0.5.2', :group => :test

@delayed << lambda {
  # setup database cleaner strategy for rspec
  if @use_rspec
    append_file "spec/spec_helper.rb" do
      "DatabaseCleaner.strategy = :truncation"
    end
  end
}
