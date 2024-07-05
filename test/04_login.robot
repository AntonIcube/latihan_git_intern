*** Settings ***
Documentation       Suite description

Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/login_page.robot

Test Setup          Start Test Case
Test Teardown       End Test Case

*** Test Cases ***
G-TCL2.Validation of Failure Login with Incorrect Email and Password Format
    To Login Page
    Input Login Form    ${FirstName}    ${Password}
    Submit Form Login
    Alert Visible Validation    ${AlertInvalidEmailFormat}
