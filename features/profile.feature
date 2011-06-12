# language: en
Feature: Profile
  In order to meet a co-founder
  As a geek
  I want to post my profile

	Scenario: Successful submission
	  Given that I am logged in
	  When I go to the edit current user page
	  And I fill in "user_description" with "I'm a rails developer who is awesome."
	  And I fill in "user_skills" with "rails devops cucumber"
	  And I fill in "user_ideas" with "real_estate cloud_manufacturing"
	  And I press "Update"
	  Then I should see "Your profile has been updated."

	Scenario: View profile
	  Given that I am logged in
	  When I go to the current user's profile page 
	  Then I should see "Profile"
  
	Scenario: View all profiles
	  Given that I am logged in
	  When I go to the users page 
	  Then I should see "Profiles"