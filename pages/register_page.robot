*** Settings ***
Library      Collections
Resource     ../base/base.robot
Variables    ../resources/locators/base_locator.py
Variables    ../resources/locators/register_page.py

*** Keywords ***
Input Email Address
    [Arguments]    ${UserEmail}
    Input Text    ${TextBoxUserEmail}    ${UserEmail}

Input First Name
    [Arguments]    ${UserFirstName}
    Input Text    ${TextBoxUserFirstName}    ${UserFirstName}

Input Last Name
    [Arguments]    ${UserLastName}
    Input Text    ${TextBoxUserLastName}    ${UserLastName}

Input User Password
    [Arguments]    ${UserPassword}
    Input Text    ${TextBoxUserPassword}    ${UserPassword}

Input User Confirm Password
    [Arguments]    ${UserPassword}
    Input Text    ${TextBoxUserConfirmPassword}    ${UserPassword}

Cannot Regoster Validation
    Element Should Be Disabled    ${ButtonRegister}