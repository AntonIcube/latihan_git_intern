*** Settings ***
Documentation  Suite description 
Resource    ../base/base.robot
Resource    ../pages/latihan_page.robot
Variables   ../resources/data/testdata.py
Variables   ../resources/locators/base_locator.py

Test Setup          Start Test

*** Test Cases ***
Testcase Open home page
    [Tags]    Test  
    To Login Page
