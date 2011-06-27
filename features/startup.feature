# language: en
Feature: Startup
  In order to meet collaborators
  As a geek
  I want to post a my startup idea

Scenario: Successful submission
  Given that I am logged in
  When I go to the new startup page
  And I fill in "startup_title" with "Video Website"
  And I fill in "startup_city" with "Vancouver"
  And I fill in "startup_description" with "It's a video site that uses RSS and GPS to do messaging in a portal"
  And I fill in "startup_skills" with "rails devops cucumber"
  And I press "Create Startup"
  Then I should see "Startup was successfully created."

Scenario: View all startups
  Given that I am logged in
  When I go to the startups page 
  Then I should see "Listing startups"