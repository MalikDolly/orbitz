Feature: Hotel Search Functionality

  Background:
    Given user is on Orbitz home page
    And user selects hotel tab button
    And user selects round trip button under hotel tab

  Scenario: verify the user gets the list of flights available for the dates specified
    When user enter columbus in check in edit box and selects Columbus, OH option
    And user enter cleveland in check out edit box and selects Cleveland, OH option
    And users enter future date in departing edit box
    And user enter future date in returning edit box
    And click on search button
    Then verify hotel search results page is displayed
    
    Scenario Outline:
    
    
    Scenario:
