Feature: Factorial  

   
 @example  
 Scenario: Factorial of a number  
     Given I enter "4" into the calculator  
     And I hit "factorial"       
     And I hit "equals"  
     Then I see a result of "24"  
