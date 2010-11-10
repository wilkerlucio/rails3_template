# download jquery files into vendor javascript files
inside "public/javascripts/vendor" do
  get "#{File.dirname(__FILE__)}/resources/rails.js", "rails.js"
  get "http://code.jquery.com/jquery-1.4.2.js",       "jquery-1.4.2.js"
end
