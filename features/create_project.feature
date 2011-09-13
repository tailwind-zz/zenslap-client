Feature: Create project
  In order to use zenslap
  As a developer 
  I want to be able to create a project on it

  Scenario: Creating a new project for the first time
    When I run `zenslap create` interactively
    When I type "Hello"
    Then the output should contain:
    """
    Login to zenslap to find your token, http://zenslap.me/login
    Please Enter your zenslap token:
    Please enter the desired zenslap application name ()
    """
  
  
  
  
  

  
