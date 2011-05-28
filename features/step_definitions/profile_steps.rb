Given /^that I am logged in$/ do
  @current_user = User.create!(
   :username => 'test',
   :email => 'test@raygun6.com',
   :password => 'test',
   :password_salt => '356a192b7913b04c54574d18c28d46e6395428ab',
   :password_hash => 'df42adbd0b4f7d31af495bcd170d4496686aecb1',
   :created_at => '2008-11-22 12:13:59')

  visit("/login")
  fill_in("Username or Email Address", :with => "test")
  fill_in("password", :with => "test")
  click_button("Log in")
end

Given /^that I am not logged in$/ do
  visit("/logout")
end



