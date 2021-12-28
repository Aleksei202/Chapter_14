Feature: account info update functionality
  Background:
    My account page is launched

  Scenario: a user changes phone number
    When user clicks 'Edit account information'
    And user types new phone number
    And user clicks 'continue' button
    Then user gets info about successful phone number update

  Scenario: a user changes address details
    When user clicks 'Modify address'
    And user clicks 'Edit'
    And user types new address details
    And user clicks 'Continue'
    Then user gets info about successful address update

  Scenario: a user deletes default address
    When user clicks 'Modify address'
    And user clicks 'Delete'
    Then user gets info that default address could not be deleted
