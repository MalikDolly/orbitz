Scenario Outline: verify user gets the list of hotels that matches city name
      When user enter <dep_city_name> checkin edit box and selects <dep_airport_name> option
      And user enter <arr_city_name> checkout edit box and selects <arr_airport_name> option
      And users enter future date in checkin edit box
      And user enter future date in checkout edit box
      And click on search button
      Then verify flight search results page is displayed
      Examples:
      |checkin_city_name|checkout_city_name |checkin_airport_name|checkout_airport_name|
      |Columbus     |  Cleveland    | Columbus, OH   |  Cleveland, OH |
      |Chicago      |  Indianapolis | Chicago, IL    |Indianapolis, IN|

