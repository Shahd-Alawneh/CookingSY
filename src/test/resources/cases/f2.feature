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
Feature: Customer Profile Management - Order History

  @tag1
  Scenario: Customer views past meal orders
    Given the customer is on their order history page
    Then the customer should see a list of their previous meal orders

  @tag2
  Scenario: Chef accesses customer's order history
    Given the chef is viewing a customer's profile
    Then the chef should have access to the customer's past order history

	@tag3
  Scenario: System administrator analyzes customer order history
    Given the system administrator is viewing customer data
    Then the system administrator should be able to access and analyze customer order history


    Examples: 
	    | customer_id | order_count |
	    | 1           | 5           |
	    | 2           | 10          |
	    | 3           | 2           |
	    | 4           | 0           |
	    | 5           | 20          |
