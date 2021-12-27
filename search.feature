

Feature: Search functionality
  Background:
    Given User launch any page from https://techskillacademy.net/brainbucket/
    And User is not logged in

  Scenario outline: searching items
    When user enters <brand name> in search line
    And User clicks Search button
    Then page with <result of search criteria> will displayed

  Examples:
  |brand name|result of search criteria|
  |samsung|Product compare|
  |Apple|Product compare|
  |treeyte|There is no product that matches the search criteria.|