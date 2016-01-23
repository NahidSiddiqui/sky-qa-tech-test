Feature: Addition 
 
 
@example 
Scenario: Add two numbers together 
   Given I enter "2" into the calculator 
   And I hit "add" 
   And I enter "5" into the calculator 
   And I hit "equals" 
   Then I see a result of "7" 
 
 
@example 
Scenario: Add three numbers together 
    Given I enter "5" into the calculator 
    And I hit "add" 
    And I enter "7" into the calculator 
    And I hit "add" 
    And I enter "2" into the calculator 
    And I hit "equals" 
    Then I see a result of "14" 

 
