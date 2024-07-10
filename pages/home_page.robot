*** Settings ***
Library         SeleniumLibrary
Library         Collections
Resource        ../base/common.robot
Resource        ../base/base.robot
Resource        ./product_detail_page.robot
Variables       ../resources/locators/home_locator.py
Resource        ./product_detail_page.robot
Variables       ../resources/locators/home_locator.py

*** Keywords ***
Search Product
    [Arguments]   ${value}
    Input Text    xpath=${SearchBox}    ${value}
    Press Key    xpath=${SearchBox}    \ue007

Input Search Box
    [Arguments]         ${Text}
    Input Text          ${SearchBox}        ${Text}

Verify Suggested Search
    Element Should Be Visible    ${SuggestedProduct}

Add Product Compare List
    [Arguments]                ${ProductName}
    Input Search Box           ${ProductName}      
    Press Enter Keyboard
    Wait for PDP Visible
    Click Compare Product Button
    Validate Message Success Alert Is Visible

Open Compare Page
    Click Link    ${CompareLink}


Input Search Box
    [Arguments]         ${Text}
    Input Text          ${SearchBox}        ${Text}

Verify Suggested Search
    Element Should Be Visible    ${SuggestedProduct}

Add Product Compare List
    [Arguments]                ${ProductName}
    Input Search Box           ${ProductName}      
    Press Enter Keyboard
    Wait for PDP Visible
    Click Compare Product Button
    Validate Message Success Alert Is Visible

Open Compare Page
    Click Link    ${CompareLink}