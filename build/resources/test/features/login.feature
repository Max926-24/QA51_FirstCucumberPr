Feature: Login

  @positive
  Scenario: Login with correct data
    Given User launches Chrome browser
    When User opens Home Page
    And User clicks on Login link
    And User enters correct data
    And  User clicks on Yalla button
    Then User verifies Success message is displayed
    And User quites browser

  @wrongPassword
  Scenario Outline: Login with correct email and wrong password
    Given User launches Chrome browser
    When User opens Home Page
    And User clicks on Login link
    And User enters correct email and wrong password
      | email   | password   |
      | <email> | <password> |
    And  User clicks on Yalla button
    Then User verifies Error message is displayed
    And User quites browser
    Examples:
      | email                   | password  |
      | max.musterman@gmail.com | Max12346! |
      | max.musterman@gmail.com | MAX12345! |
      | max.musterman@gmail.com | Ьфтгуд1234!|
      | max.musterman@gmail.com | Max12341 |
