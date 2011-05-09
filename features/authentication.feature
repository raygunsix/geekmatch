Feature: Authentication
  In order to meet a co-founder
  As a geek
  I want to be able to log in

Scenario: Login
  Given I am not logged in
  When I go to the signup page
  And I fill in "user_username" with "user"
  And I fill in "user_email" with "user@gmail.com"
  And I fill in "user_password" with "passwd"
  And I fill in "user_password_confirmation" with "passwd"
  And I press "Sign up"
  Then I should see "You are now logged in."
