*** Settings ***
Library         SeleniumLibrary
Library         Collections
Resource        ../base/common.robot
Resource        ../base/base.robot


*** Keywords ***
Search Product
    [Arguments]   ${value}
    Input Text    xpath=${SearchBox}    ${value}
    Press Key    xpath=${SearchBox}    \ue007