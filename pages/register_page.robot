*** Settings ***
Library      Collections
Resource     ../base/base.robot
Variables    ../resources/locators/base_locator.py

*** Keywords ***
To Register Page
    Wait Until Element Is Visible    xpath=${HeaderLinkToLoginOrRegister}
    Click Element    xpath=${HeaderLinkToLoginOrRegister}   
    Click Element    xpath=${HeaderLinkToRegister}
