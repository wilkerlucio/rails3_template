# setup database cleaner gem
gem 'database_cleaner', '0.5.2', :group => :test

@delayed << lambda {
  # setup database cleaner strategy for rspec
  if @use_rspec
    # configure filters
    inject_into_file "spec/spec_helper.rb", :after => "config.mock_with :rspec\n" do
      "\n  config.before(:suite) do\n" +
      "    DatabaseCleaner.strategy = :truncation\n" +
      "  end\n\n" +
      "  config.after(:each) do\n" +
      "    DatabaseCleaner.clean\n" +
      "  end\n\n"
    end
  end
}
