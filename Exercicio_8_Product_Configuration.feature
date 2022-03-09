Feature: Product Configuration

    Feature Description
    as an EBAC-SHOP customer
    i want to configure my product according to my size and taste
    and choose the quantitya
    and then insert into the cart

    Context:
    Given that access to the product page

  Scenario: Validate color, size, and quantity insertion
    When select the color
    And select the size
    And enter the amount 2 clothes
    Then Successfully configured product

  Scenario: Validate non-color insertion
    When don't select the color
    And select the size
    And enter the amount 2 clothes
    Then the product configuration cannot proceed

  Scenario: Validate size not inserted
    When select the color
    And don't select the size
    And enter the amount of 2 clothes
    Then the product configuration cannot proceed

  Scenario: Validate button clean
    When select the color
    And select the size
    And enter the amount 2 clothes
    And click the clean button
    Then selections return to the initial state

  Scenario Outline: Validating quantity of products
    When select the color
    And select the size
    And enter the amount of <number> clothes
    Then <message>

    Examples:
      | number | message                                    |
      | "0"    | "the product configuration cannot proceed" |
      | "1"    | "Successfully configured product"          |
      | "10"   | "Successfully configured product"          |
      | "11"   | "the product configuration cannot proceed" |








