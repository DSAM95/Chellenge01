

*** Settings *** 
Documentation    On va décrire ce que la suite de test fait 
Resource    ../Ressources/FrontOfficeApp.robot
Resource    ../Ressources/CommonWeb.robot
Test Setup    BeginWebTest
Test Teardown    EndWebTest

#robot -d output Test/Front_Office.robot

*** Variables ***
${Browser}    edge
${URL}    https://automationplayground.com/front-office/    

*** Test Cases ***

should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    Test1
    FrontOfficeApp.Go to landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page
    Sleep    10s
   

