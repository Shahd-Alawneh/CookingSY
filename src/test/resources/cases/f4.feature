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
Feature: Order and Menu Customization - Ingredient Substitutions

	@tag1
  Scenario: System suggests ingredient substitutions
    Given the customer has a "Peanut" allergy
    When the customer selects a meal with peanuts
    Then the system should suggest alternative ingredients

	@tag2
  Scenario: Chef approves ingredient substitution
    Given the chef receives an alert about an ingredient substitution
    When the chef reviews the substitution
    Then the chef should be able to approve or adjust the final recipe

    Examples: 
      | allergy   | allergy_ingredient |
	    | Peanut    | Peanuts            |
	    | Gluten    | Wheat              |
	    | Dairy     | Milk               |
	    | Soy       | Soy Sauce          |
	    | Shellfish | Shrimp             |
