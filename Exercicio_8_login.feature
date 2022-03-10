Feature: Login to the platform

    Feature Description
    as an Ecommerce customer
    i want to log in authentication on the platform
    to view my orders

    Context:
    Given that access to the login page

  Scenario Outline: Validate login and password
    When enter the login <login>
    And enter the password <password>
    And click the login button
    Then correct behavior is <behavior>

    Examples:
      | login                            | password            | behavior                                       |
      | "johnconnors@schwarzenegger.com" | "correctpassword"   | "direct user to checkout page"                 |
      | "johnconnor#schwarzenegger.com"  | "correctpassword"   | "show the message -> Invalid user or password" |
      | "johnconnors@schwarzenegger.com" | "incorrectpassword" | "show the message -> Invalid user or password" |
      | "johnconnor$schwarzenegger.com"  | "incorrectpassword" | "show the message -> Invalid user or password" |





