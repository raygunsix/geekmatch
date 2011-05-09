Given /^I am not logged in$/ do
visit("/logout")
assert page.has_content?('You have been logged out.')
end
