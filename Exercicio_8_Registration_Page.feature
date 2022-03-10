
Feature: Registration page

    Feature Description
    as an Ecommerce customer
    i want to complete my registration
    to finalize my purchase

    Context:
    Given that access to the registration page

  Scenario Outline: Validating required fields
    When enter the registration page
    And fill in the <name> field
    And fill in the <surname> field
    And fill in the <country> field
    And fill in the <address> field
    And fill in the <city> field
    And fill in the <zipcode> field
    And fill in the <phonenumber> field
    And fill in the <emailaddress> field
    Then shows the <message>

    Examples:
      | name   | surname   | country         | address                    | city          | zipcode | phonenumber | emailaddress                  | message                           |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors@schwarzenegger.com" | "Purchase completed successfully" |
      | " "    | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | " "       | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | "Connors" | " "             | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | "Connors" | "United States" | " "                        | "Los Angeles" | "90001" | "33556677"  | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | " "           | "90001" | "33556677"  | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | " "     | "33556677"  | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | " "         | "jconnors@schwarzenegger.com" | "blank or invalid field"          |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | " "                           | "blank or invalid field"          |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnorsAschwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors#schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors%schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors+schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors_schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors0schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors@schwarzenegger,com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors!schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors$schwarzenegger.com" | "Invalid email"                   |
      | "John" | "Connors" | "United States" | "Cyberdyne Systems Avenue" | "Los Angeles" | "90001" | "33556677"  | "jconnors schwarzenegger.com" | "Invalid email"                   |