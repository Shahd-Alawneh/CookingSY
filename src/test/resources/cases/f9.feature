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
Feature: Notifications and Alerts - Reminders

	@tag1
  Scenario: Customer receives a reminder for an upcoming delivery
    Given the customer has an upcoming meal delivery
    Then the customer should receive a reminder notification

	@tag2
  Scenario: Chef receives a notification about a scheduled cooking task
    Given the chef has a scheduled cooking task
    Then the chef should receive a notification about the task and its deadline

    Examples: 
			| customer_id | delivery_date | chef_name  | task_name                | deadline         |
    	| 123         | 2024-10-27    | Chef John  | Prepare Tomato Sauce     | 2024-10-27 12:00 |
    	| 456         | 2024-10-28    | Chef Jane  | Chop Vegetables          | 2024-10-28 10:00 |
    	| 789         | 2024-10-29    | Chef David | Bake Vegan Pesto Pasta   | 2024-10-29 14:00 |
    	| 101         | 2024-10-30    | Chef Emily | Prepare Grilled Chicken  | 2024-10-30 11:00 |
    	| 112         | 2024-10-31    | Chef Sarah | Cook Rice and Asparagus  | 2024-10-31 13:00 |
