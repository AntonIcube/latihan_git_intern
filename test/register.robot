*** Settings ***
Documentation  Suite description 
Resource    ../base/base.robot
Resource    ../pages/latihan_page.robot
Resource    ../pages/register_page.robot
Variables   ../resources/data/register.py

Test Setup          Start Test

*** Test Cases ***
TCR2.Validation of Registration Failure with Empty Mandatory Fields
    To Register Page
    Validation of Register Page
    Input Email Address            ${UserEmail}
    Input First Name               ${UserFirstName}
    Input Last Name                ${UserLastName}
    Input User Password            ${UserPassword}
    Input User Confirm Password    ${UserPassword}
    Cannot Regoster Validation