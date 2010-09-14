# download jquery files into vendor javascript files
inside "public/javascripts/vendor" do
  get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "rails.js"
  get "http://code.jquery.com/jquery-1.4.2.js",                     "jquery-1.4.2.js"
end
