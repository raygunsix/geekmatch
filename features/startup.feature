# language: en

Feature: Startup
  In order to meet collaborators
  As a geek
  I want to post a my startup idea

@omniauth_test 
Scenario: Successful submission
  Given that I am logged in with "Twitter"
  And I am on the new startup page
  When I fill in the following:
    | Title       | Video Website                                                       |
    | City        | Vancouver                                                           |
    | Description | It's a video site that uses RSS and GPS to do messaging in a portal |
    | Skills      | rails devops cucumber                                               |
  And I press "Create Startup"
  Then I should see "Startup was successfully created."

@omniauth_test 
Scenario: View all startups
  Given that I am logged in with "Twitter"
  When I go to the startups page 
  Then I should see "Listing startups"