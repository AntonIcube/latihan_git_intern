*** Settings ***
Library      Collections
Resource     ../base/base.robot
Variables    ../resources/locators/base_locator.py
Variables    ../resources/locators/login_page.py
Variables    ../resources/locators/register_page.py

*** Keywords ***
To Login Page
    Wait Until Element Is Visible                    ${HeaderLinkToLogin}
    Click element                                    ${HeaderLinkToLogin}    

Validation of Login Page
    Wait Until Element Is Visible                      ${TextBoxUserName}

To Register Page
    To Login Page
    Validation of Login Page
    Click Link    ${LinkToCreateAccount}

Validation of Register Page
    Wait Until Element Is Visible    ${TextBoxUserEmail}