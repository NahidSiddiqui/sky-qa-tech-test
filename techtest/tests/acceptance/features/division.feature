Feature: Division 
 
 
 @example 
 Scenario: Devide two numbers together 
     Given I enter "12" into the calculator 
     And I hit "devide" 
     And I enter "2" into the calculator 
     And I hit "equals" 
     Then I see a result of "6" 
 
