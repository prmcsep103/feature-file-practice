Feature: Login functionality
  As a user I want to test login page

  Scenario: Verify user navigate to login page successfully
    Given I am on home page
    When I click on login link
    Then I should navigate to login page successfully

  Scenario Outline: Verify user should not login with invalid credentials
    Given I am on home page
    When I click on login link
    And I enter "<username>"
    And I enter "<password>"
    And I click on login button
    Then I should not logged in successfully
    Examples:
      | username           | password | error |
      | prime123@gmail.com | Prime123 | error |