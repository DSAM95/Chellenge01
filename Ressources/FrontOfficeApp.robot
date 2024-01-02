
*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Landing.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to landing Page
    Landing.navigate To 
    ${returnPage}    Landing.Verify "WebSitePage" Loaded
    IF    ${returnPage} == $True
        Log    Page affichée
    END

Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify "Team_Page" Loaded

Validate "Team" Page
    Team.Verify Content "Team" Page





