Feature: Visit Online Calculator

  Scenario: Visting online-calculator.com
    Given I visit online calculator
    Then I should see online calculator in title

Scenario Outline: Test division, subtraction and CE functionalities
Given I visit online calculator
When I enter following values and press CE button
      |value1 | <value1>|
      |value2 | <value2>|
      |operator | <operator>|     
Then I should be able to see
      | expected |<expected>|
Examples:
    | value1      | value2    | operator      | expected  |
      |   2       |   2       |   /           | 1         |
      |   4       |   0       |   /           | "Error"   |
      |   5       |   2       |   -           | 3         |
      |   -6      |   2       |   -           | -4        |
      |   2       |   9       |   -           | "AC"      |
      