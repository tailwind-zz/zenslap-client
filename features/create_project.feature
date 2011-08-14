Feature: Create project
  In order to use zenslap
  As a developer 
  I want to be able to create a project on it

  Scenario: Creating a new project
    When I run `zenslap create`
    Then the output should contain:
    """
    Hello
    """
  
  
  
  
  

  
