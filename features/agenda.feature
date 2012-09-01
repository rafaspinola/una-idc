Feature: Schedule meeting
  In order to have an agenda
  As a person
  I want to create a meeting

  Scenario: Create meeting
    Given I have a room called Principal
    And I have participants called Rafael, Bruno, Hugo
    When I go to the new meeting page
    And I select the Principal room
    And I select the participants Rafael, Bruno, Hugo
    And I type the timespan of the meeting
    And I click on New meeting
    Then I see the Meeting created page
    And I see the Principal room
    And I see the Rafael, Hugo, Bruno participants
