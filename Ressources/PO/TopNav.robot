
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${xPath_TeamHref_}    //a[@href="#team"]

*** Keywords ***
Select "Team" Page
    Click Link    ${xPath_TeamHref_}
    

