 @First
  Feature:Basic Syntax
  Scenario:Testing TS hompage
    Given user is on the TS Homepage
    When they click the About Us Link
    Then they are redirected to the About US page
    And close the browser
