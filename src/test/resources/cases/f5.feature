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
Feature: Scheduling and Task Management

	@tag1
  Scenario: Kitchen manager assigns tasks to chefs
    Given the kitchen manager is on the task assignment page
    When the kitchen manager assigns a cooking task to a chef
    Then the chef should receive a notification about the assigned task

	@tag2
  Scenario: Chef receives notifications about assigned tasks
    Given the chef has assigned cooking tasks
    Then the chef should receive notifications about the tasks and their deadlines


    Examples: 
	    | task_name                | chef_name  |
	    | Prepare Tomato Sauce     | Chef John  |
	    | Chop Vegetables          | Chef Jane  |
	    | Bake Vegan Pesto Pasta   | Chef David |
	    | Prepare Grilled Chicken  | Chef Emily |
	    | Cook Rice and Asparagus  | Chef Sarah |
