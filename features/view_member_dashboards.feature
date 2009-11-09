Feature: Member dashboard
  In order to see relevant information
  A member
  should be able to see a dashboard
  
  Scenario: View member dashboard
    Given a member exists with name: "Matt Dean"
    When I go to the show page for that member
    Then I should see "Matt Dean"
