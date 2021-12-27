

Feature: Forgotten password functionality
  Background:
    Given User launch Forgotten password page
    And User is not logged in

  Scenario: a user requests login email using existing account email
    When user enters account email
    And User clicks Continue button
    Then Info pops up 'An email with a confirmation link has been sent your email address.'

  Scenario: a user requests login email using not existing account email
    When user enters account email
    And User clicks Continue button
    Then Info pops up 'Warning: The E-Mail Address was not found in our records, please try again!'