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
Feature: Billing System

	@tag1
  Scenario: Customer receives an invoice
    Given the customer has placed an order
    Then the customer should receive an invoice for the order

	@tag2
  Scenario: System administrator generates financial reports
    Given the system administrator is viewing financial data
    Then the system administrator should be able to generate reports on revenue and business performance

    Examples: 
      | order_id | report_period |
	    | 123      | This Month    |
	    | 456      | Last Month    |
	    | 789      | This Year     |
	    | 101      | Last Year     |
	    | 112      | All Time      |
