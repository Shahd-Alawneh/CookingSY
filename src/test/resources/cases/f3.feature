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
Feature: Order and Menu Customization - Custom Meal Requests

	@tag1
  Scenario: Customer creates a custom meal request
    Given the customer is on the meal customization page
    When the customer selects "Tomatoes" and "Pasta" as ingredients
    Then the system should allow the customer to submit the custom meal request

	@tag2
  Scenario: System validates ingredient combinations
    Given the customer has selected "Tomatoes" and "Bleach" as ingredients
    Then the system should display an error message indicating that the ingredients are incompatible

    Examples: 
	    | ingredient1 | ingredient2 | ingredientA | ingredientB |
	    | Tomatoes    | Pasta       | Tomatoes    | Bleach      |
	    | Basil       | Olive Oil   | Pasta       | Soap        |
	    | Chicken     | Rice        | Salt        | Wood        |
	    | Garlic      | Spinach     | Sugar       | Gravel      |
	    | Salmon      | Asparagus   | Milk        | Gasoline    |
