#info- fixed file from 14.1

Feature: Forgotten password functionality
  Background:
    Given forgotten password page is launched
    And user is not logged in

  Scenario: a user requests email for recovery login using existing account email
    When user enters account email
    And user clicks 'continue' button
    Then an email with a confirmation link has been sent
    And user gets info about success email

  Scenario: a user requests login email using not existing account email
    When user enters account email
    And user clicks 'continue' button
    Then user gets info that email is not registered