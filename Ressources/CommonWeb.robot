
*** Settings ***
Library    SeleniumLibrary
Resource   Test\Front_Office.robot
*** Variables ***
   

*** Keywords ***
BeginWebTest
    Open Browser    about:blank     ${Browser}
    Maximize Browser Window    
    
EndWebTest
    Close All Browsers
