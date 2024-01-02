
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${teamHeaderLabel}    //*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Verify "Team_Page" Loaded
    Wait Until Page Contains Element    ${teamHeaderLabel}     

Verify Content "Team" Page
    # méthode 01
    #Element Text Should Be    ${teamHeaderLabel}    OUR AMAZING TEAM
    # méthode 2
    ${ElementText} =    Get Text    ${teamHeaderLabel}
    Should Be Equal As Strings    ${ElementText}    Our Amazing Team    ignore_case=true  
    
