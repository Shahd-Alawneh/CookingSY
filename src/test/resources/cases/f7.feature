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
Feature: Inventory and Supplier Management - Real-time Pricing and Ordering

	@tag1
  Scenario: Kitchen manager fetches real-time ingredient prices
    Given the kitchen manager is on the purchasing page
    When the kitchen manager selects "Tomatoes"
    Then the system should fetch real-time prices from suppliers

	@tag2
  Scenario: System generates purchase orders
    Given the stock level of "Tomatoes" is critically low
    Then the system should automatically generate a purchase order for tomatoes

    Examples: 
	    | ingredient    |
	    | Tomatoes      |
	    | Basil         |
	    | Pasta         |
	    | Olive Oil     |
	    | Garlic        |
