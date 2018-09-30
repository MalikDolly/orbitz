Feature: Flight Search Functionality

  Background:
    Given user is on Orbitz home page
    And user selects flight tab button
    And user selects round trip button under flight tab

  Scenario: verify the user gets the list of flights available for the dates specified
  When user enter columbus in flying from edit box and selects Columbus, OH option
  And user enter cleveland in flying to edit box and selects Cleveland, OH option
  And users enter future date in departing edit box
  And user enter future date in returning edit box
  And click on search button
  Then verify flight search results page is displayed


    Scenario Outline: verify user gets the list of airport that matches city name
      When user enter <dep_city_name> in flying from edit box and selects <dep_airport_name> option
      And user enter <arr_city_name> in flying to edit box and selects <arr_airport_name> option
      And users enter future date in departing edit box
      And user enter future date in returning edit box
      And click on search button
      Then verify flight search results page is displayed
      Examples:
      |dep_city_name| arr_city_name |dep_airport_name|arr_airport_name|
      |Columbus     |  Cleveland    | Columbus, OH   |  Cleveland, OH |
      |Chicago      |  Indianapolis | Chicago, IL    |Indianapolis, IN|


  Scenario: verify user is warned when searching for past date flights
  When user enter columbus in flying from edit box and selects Columbus, OH option
  When user enter cleveland in flying to edit box and selects Cleveland, OH option
    And users enter past date in departing edit box
    And user enter past date in returning edit box
  And click on search button
  Then user should see the following message
  |error messages                                |
  |Tell us where you're flying from.             |
  |Tell us where you're flying to.               |
  |Dates must be between 9/29/2018 and 8/22/2019.|
  |The date must be 9/29/2018 or after.          |
  |wrong error message                           |
      Scenario: verify the list of airports displayed should not be more than 5
        When user enter in flying from edit box
        Then verify the list of airports counts is more than 5

