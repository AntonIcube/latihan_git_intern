*** Settings ***
Documentation  Suite description 
Resource    ../base/base.robot
Resource    ../pages/latihan_page.robot
Variables   ../resources/data/testdata.py
Variables   ../resources/locators/base_locator.py

Test Setup          Start Test

*** Test Cases ***

TCL1.Login incorect value
    [Tags]    Test  
    Go to the Login Page
    Input email in the wrong format   ${IncorrectEmail}
    Input password    ${Password}
    Click the Sign In button
    Verify the sign in button is disabled 


TCR3.Register With weak password
    [Tags]      Test
    Input Email Address
    Input FirstName
    Input LastName
    Input PasswordRegis
    Input Confirm Password
    Input Phone Number

    

