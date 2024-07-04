*** Settings ***
Library      Collections
Resource     ../base/base.robot
Variables    ../resources/locators/base_locator.py
Variables    ../resources/locators/login_page.py

*** Keywords ***
Input Email Address
    [Arguments]    ${UserEmail}
    Input Text    ${TextBoxUserName}    ${UserEmail}

Input User Password
    [Arguments]    ${UserPassword}
    Input Text    ${TextBoxUserPassword}    ${UserPassword}
    
Click Login Button
    Click Button    ${ButtonLogin}

Login Success Validation
    Wait Until Element Is Visible    ${LabelAccountInfo}