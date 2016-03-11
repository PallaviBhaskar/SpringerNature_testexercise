@invalid
Feature: When a customer performs an invalid search on the website, an appropriate error message should be displayed

Scenario Outline: Basic simple search unhappy path

Given I navigate to SpringerNature home page
When I do an invalid search "<invalidsearch>" 
Then I see an appropriate error message 

Examples:
|invalidsearch|
|%%%          |