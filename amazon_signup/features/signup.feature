Feature: sign up
  As a user I should be able to sign up to Amazon website

Scenario: sign up
  Given I navigate to Amazon homepage
  Given I click on Start here button
  Given I enter name, email, and password
  And I click Create your Amazon account button

Scenario: sign up with email already in use
  Given I navigate to Amazon homepage again
  Given I click on Start here button again
  Given I enter name, email that already in use, and password again
  And I click Create your Amazon account button again
