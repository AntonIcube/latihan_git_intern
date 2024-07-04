*** Settings ***
Documentation  Suite description 
Resource    ../base/base.robot
Resource    ../pages/login_page.robot
Resource    ../pages/register_page.robot
Variables   ../resources/data/testdata.py
Variables   ../resources/locators/base_locator.py

Test Setup          Start Test

*** Test Cases ***
TCL3 Login Unregistered Email
    To Login Page
    Input Text    xpath=${InputEmailLogin}    ${tcl3_email}
    Input Text    xpath=${InputPassLogin}    ${tcl3_password}
    Click Element    xpath=${SignInButton}
    Wait Until Element Is Visible    xpath=${MessageError}

# TCR1 Register UI
#     To Register Page
#     Input Text    xpath=${InputEmailRegister}    ${tcr1_email}
#     Input Text    xpath=${InputFirstName}    ${tcr1_first_name}
#     Input Text    xpath=${InputLastName}    ${tcr1_last_name}
#     Input Password    xpath=${InputPassRegister}    ${tcr1_pass}
#     Input Password    xpath=${InputConfirmPassRegister}    ${tcr1_confirm_pass}
#     Input Text    xpath=${InputPhone}    ${tcr1_phone}
#     Click Element    xpath=${RegisterButton}
    
    