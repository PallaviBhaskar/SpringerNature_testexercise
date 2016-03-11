@valid
Feature: When a customer searches for a valid product on the website, they should see a view of
products matching that search term

Scenario Outline: Basic simple search happy path

Given I go to SpringerNature home page
When I search for a valid product "<book_searchquery>" 
Then I see a view of products matching to the search done 

Examples:
|book_searchquery|
| Astronomy         |
| Calculus          |