# language: en
Feature: Profile
  In order to meet a co-founder
  As a geek
  I want to post my profile

@omniauth_test 
Scenario: Successful submission
  Given that I am logged in with "Twitter"
  When I go to the edit current user page
  When I fill in the following:
    | Description | I'm a rails developer who is awesome. |
    | Ideas       | real_estate cloud_manufacturing       |
    | Skills      | rails devops cucumber                 |
  And I press "Update"
  Then I should see "Your profile has been updated."

@omniauth_test 
Scenario: View profile
  Given that I am logged in with "Twitter"
  When I go to the current user's profile page 
  Then I should see "Profile"
 
@omniauth_test 
Scenario: View all profiles
  Given that I am logged in with "Twitter"
  When I go to the users page 
  Then I should see "Profiles"