# language: en

Feature: Startup
  In order to meet collaborators
  As a geek
  I want to post a my startup idea

Scenario: Successful submission
  Given that I am logged in
  And I am on the new startup page
  When I fill in the following:
    | Title       | Video Website                                                       |
    | City        | Vancouver                                                           |
    | Description | It's a video site that uses RSS and GPS to do messaging in a portal |
    | Skills      | rails devops cucumber                                               |
  And I press "Create Startup"
  Then I should see "Startup was successfully created."

Scenario: View all startups
  Given that I am not logged in
  When I go to the startups page 
  Then I should see "Listing startups"