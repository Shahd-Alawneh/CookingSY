#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Customer Profile Management - Dietary Preferences

  @tag1
  Scenario: Customer inputs dietary preferences and allergies
    Given the customer is on the profile page
    When the customer enters "Vegan" as a dietary preference and "Peanuts" as an allergy
    Then the system should store these preferences

  @tag2
	Scenario: Chef views customer dietary preferences
    Given the chef is viewing a customer's profile
    Then the chef should see "Vegan" as a dietary preference and "Peanuts" as an allergy


    Examples: 
      | dietary_preference | allergy    |
      | Vegan              | Peanuts    |
      | Vegetarian         | Gluten     |
      | Gluten-Free        | Soy        |
      | Dairy-Free         | Shellfish  |
      | Paleo              | Nuts       |
      