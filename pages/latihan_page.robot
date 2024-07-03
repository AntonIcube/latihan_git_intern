*** Settings ***
Library      Collections
Resource     ../base/base.robot
Variables    ../resources/locators/base_locator.py

*** Keywords ***
To Login Page
    Wait Until Element Is Visible                    ${HeaderLinkToLogin}
    Click element                                    ${HeaderLinkToLogin}    

Validation of Login Page
    Wait Until Element Is Visible                      ${TextBoxUserName}