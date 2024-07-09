*** Settings ***
Library         SeleniumLibrary
Library         Collections
Resource        ../base/common.robot
Resource        ../base/base.robot
Variables       ../resources/locators/compare_locator.py

*** Keywords ***
Verify First Product Name In Compare List
    [Arguments]            ${ProductName}
    Element Should Contain    ${CompareProductName1}    ${ProductName}

Verify Second Product Name In Compare List
    [Arguments]            ${ProductName}
    Element Should Contain    ${CompareProductName2}    ${ProductName}