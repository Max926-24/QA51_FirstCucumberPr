Feature: Home Page

  @Navigate

  Scenario: Verify Home Page title is displayed
    Given User launches Chrome browser
    When User opens Home Page
    Then User verifies Home Page title is displayed
    And User quites Browser