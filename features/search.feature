# language: en
Feature: Validate search

  Scenario: Validate search with sucess
    Given it is on the website Giphy
    When performing a search with valid data
    Then the search is presented successfully

  Scenario: Error search without result
    Given it is on the website Giphy
    When performing a search with invalid data
    Then the search is presented an error message

#Others Scenarios
#Search by typing
#Search by copy and paste 
#Search with empty field  
#Success search error search