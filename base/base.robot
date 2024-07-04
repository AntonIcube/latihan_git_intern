*** Settings ***
Library     SeleniumLibrary
Library     String
Variables   ../resources/data/testdata.py
Variables   ../resources/locators/base_locator.py


*** Variables ***
${BROWSER}    Chrome

*** Keywords ***
Start Test
    Create WebDriver    ${BROWSER}      
    Go To  ${URLWEB}
    Maximize Browser Window
    Execute JavaScript    document.body.style.zoom = "100%"
    Set selenium speed                                      1

Go to the Login Page
    Click Link    ${HeaderLinkToLogin}
    Maximize Browser Window
    Execute JavaScript    document.body.style.zoom = "100%"
    Set selenium speed                                      1
    
Input email in the wrong format
    [Arguments]    ${IncorrectEmail} 
    Input Text    ${TextBoxEmail}   ${IncorrectEmail}

Input password
    [Arguments]    ${password}
    Input Text    ${TextBoxPassword}    ${password}
    
Click the Sign In button
    Click Button    ${SignInButton}

Verify the sign in button is disabled
    ${button_enabled}    Get Element Attribute    ${SignInButton}    disabled
    Should Be True    "${button_enabled}"    true