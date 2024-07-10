*** Settings ***
Library         SeleniumLibrary
Resource        ../base/common.robot
Resource        ../base/base.robot
Resource        ../pages/home_page.robot
Variables    ../resources/locators/product_list_locator.py

*** Keywords ***
Go To PLP
    Click Element    xpath=${MenuWoman}

Change View As List
    Click Element    xpath=${ProductsListViewIcon}
    Wait Until Element Is Visible    xpath=${ProductListViewContainer}

Change View As Grid
    Click Element    xpath=${ProductsGridViewIcon}
    Wait Until Element Is Visible    xpath=${ProductGridViewContainer}   

Add Product To Cart From PLP
    [Arguments]    ${value}
    Click Element    xpath=${AddToCartButtonInPLP.format("${value}")}
    Wait Until Element Is Visible    xpath=${SuccessAddToCartAllert} 