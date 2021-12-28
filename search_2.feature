#info- fixed file from 14.1

Feature: Search functionality
  Background:
    Given brainbucket webpage is launched

  Scenario outline: searching items
    When user enters <brand name> in search line
    And user clicks Search button
    Then page with <result of search criteria> displays

  Examples:
    |brand name|result of search criteria     |
    |samsung   |products display              |
    |Apple     |products display              |
    |treeyte   |warning "no products" displays|