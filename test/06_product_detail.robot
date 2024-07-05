*** Settings ***
Documentation       Suite description
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource    ../pages/product_list_page.robot
Resource    ../pages/product_detail_page.robot
Variables    ../resources/locators/home_locator.py
Variables    ../resources/locators/product_list_locator.py
Variables    ../resources/data/testdata.py

Test Setup          Start Test Case
Test Teardown       End Test Case


*** Test Cases ***
G-TCPDP1 Guest Customers Submit Product Reviews When Feature Guest Product Review Configuration Enable
    Go To Home Page
    Go To PLP
    Go To PDP From PLP    ${ProductSimpleNameForSearch}
    Fill in the Review    ${ProductReviewName}    ${ProductRating}    ${ProductReviewTitle}    ${ProductReviewDetail}    
    Page Should Contain    You submitted your review for moderation

TCPDP4.2 Customers Add Product Configurable to the cart from PDP
    Go To Home Page
    Search Product    ${ProductConfigNameForSearch}
    Add Config Product To Cart From PDP    ${Size}    ${Colour}
    Wait Until Element Is Visible    xpath=${SuccessAddToCartAllert}