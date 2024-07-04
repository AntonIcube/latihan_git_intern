*** Settings ***
Documentation  Suite description 
Resource    ../base/base.robot
Resource    ../pages/latihan_page.robot
Resource    ../pages/login_page.robot
Variables   ../resources/data/login.py

Test Setup          Start Test

*** Test Cases ***
TCL1.Succesful Login with Registered Email and Password
    To Login Page
    Validation of Login Page
    Input Email Address    ${UserEmail}
    Input User Password    ${UserPassword}
    Click Login Button
    Login Success Validation