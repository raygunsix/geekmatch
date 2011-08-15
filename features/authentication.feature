Feature: Authentication
  In order to meet a co-founder
  As a geek
  I want to be able to log in

@omniauth_test
Scenario: Successful Login
  Given that I am not logged in
  When I go to the login page
  And I log in with "Twitter"
  Then I should see "Signed in!"
