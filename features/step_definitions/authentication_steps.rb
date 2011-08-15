Given /^that I am not logged in$/ do
  visit("/logout")
  assert page.has_content?('You have been logged out.')
end

Given /^that I am logged in with "([^"]*)"$/ do |provider|
	visit "/auth/#{provider.downcase}"
end

When /^I log in with "([^"]*)"$/ do |provider|
	visit "/auth/#{provider.downcase}"
end