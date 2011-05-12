# language: en
Feature: geek submits a profile
  As a geek
  I want to submit my profile
  So that I can meet a co-founder

Scenario: Successful submission
  Given I have "0" profiles
  When I post a profile
  Then I should see that I have "1" profile

#Scenario: Geek forgets to enter email 

