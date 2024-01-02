
*** Settings ***
Library    SeleniumLibrary
Resource   Test\Front_Office.robot  

*** Variables ***
${xpathLoading_MainPage}    //a[@href="#page-top" and text()='RobotFrameworkTutorial.com Test Client']

*** Keywords ***
navigate To 
    Go To    ${URL}     

Verify "WebSitePage" Loaded
    Wait Until Page Contains Element    ${xpathLoading_MainPage}
    [Return]    ${True}



    