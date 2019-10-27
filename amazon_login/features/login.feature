Feature: login
  As a user I should be able to login from my account

Scenario: Login
  Given I navigate to Amazon homepage
  Given I click on login button
  Given I enter email with my email
  Given I click on Continue
  Given I enter my password
  And I click on Sign-In
