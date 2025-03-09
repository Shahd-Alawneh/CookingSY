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
Feature: AI Assistance

	@tag1
  Scenario: AI recipe recommendation
    Given the customer has dietary restrictions "Vegan" and available ingredients "Tomatoes, Basil, Pasta"
    When the customer asks for a recipe recommendation with 30 minutes preparation time
    Then the system should recommend "Spaghetti with Tomato Sauce" and explain the recommendation
 
    Examples: 
      | dietary_restrictions| available_ingredients             | preparation_time | recommended_recipe                    |
      | Vegan               | Tomatoes, Basil, Pasta            | 30               | Spaghetti with Tomato Sauce           |
      | Vegan               | Basil, Pasta, Olive Oil, Garlic   | 25               | Vegan Pesto Pasta                     |
      | Vegan               | Tomatoes, Basil, Garlic           | 45               | Tomato Basil Soup                     |
      | Gluten-Free         | Tomatoes, Basil, Chicken          | 35               | Grilled Chicken with Tomato and Basil |
      | Vegetarian          | Pasta, Olive Oil, Garlic, Spinach | 20               | Spinach Garlic Pasta                  |
