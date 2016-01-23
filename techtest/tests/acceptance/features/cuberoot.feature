Feature: Cuberoot  

   
 @example  
 Scenario: Cuberoot of a number  
     Given I enter "9" into the calculator  
     And I hit "cuberoot"       
     And I hit "equals"  
     Then I see a result of "3"  
