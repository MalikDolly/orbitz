Feature: OrbitzCruiseFunctionality
  Background:
    Given user is on Orbitz home page
    And user selects flight tab button
    And user selects round trip button under flight tab

  Scenario: verify the user gets the list of cruise available for the dates specified
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