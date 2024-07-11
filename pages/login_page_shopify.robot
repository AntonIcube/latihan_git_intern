*** Settings ***
Library         SeleniumLibrary
Library         Collections
Variables       ../resources/locators/login_locator.py
Variables       ../resources/locators/home_locator.py
Variables       ../resources/locators/my_account_locator.py
Resource        ../base/common.robot


*** Keywords ***
To Login Page
    Wait Until Element Is Visible With Long Time    ${HeaderLinkLoginShopify}
    Click Element    ${HeaderLinkLoginShopify}

Input Login Form 
    [Arguments]    ${Email}    ${Password}
    Wait Until Element Is Enabled    ${LoginUsernameShopify}
    Input text    ${LoginUsernameShopify}    ${Email}
    Wait Until Element Is Enabled    ${LoginPasswordShopify}
    Input text    ${LoginPasswordShopify}    ${Password}

Submit Form Login
    Wait Until Element Is Enabled    ${ButtonLoginShopify}
    Click element    ${ButtonLoginShopify}

Login Validation
    Wait Until Element Is Visible    ${ButtonContactDetailShopify}
    Element Should Be Visible    ${ButtonContactDetailShopify}

Go To Login By Phone Number
    Wait Until Element Is Visible With Long Time    ${ButtonSwitchLoginByPhoneNumber}
    Click Element    ${ButtonSwitchLoginByPhoneNumber}

Input Phone Number Login Form
    [Arguments]    ${PhoneNumber}
    Wait Until Element Is Visible With Long Time    ${LoginPhoneNumber}
    Input Text    ${LoginPhoneNumber}    ${PhoneNumber}

Submit Request OTP
    Wait Until Element Is Visible With Long Time    ${ButtonRequestOTP}
    Click Element    ${ButtonRequestOTP}

Login User
    To Login Page
    Input Login Form    ${EmailAddressRegistered}    ${Password}
    Submit Form Login
    ${LoggedIn}    Login Validation
    RETURN    ${LoggedIn}
