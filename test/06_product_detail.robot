*** Settings ***
Documentation       Suite description
Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/product_detail_page.robot
Resource            ../pages/login_page.robot
Variables           ../resources/data/testdata.py
Variables           ../resources/locators/product_detail_locator.py
Resource            ../pages/product_detail_page.robot
Resource            ../pages/login_page.robot
Resource            ../pages/compare_page.robot
Variables           ../resources/data/testdata.py
Variables           ../resources/locators/product_detail_locator.py
Resource            ../pages/login_page.robot
Resource            ../pages/product_detail_page.robot
Resource            ../pages/login_page.robot
Resource            ../pages/compare_page.robot
Variables           ../resources/data/testdata.py
Variables           ../resources/locators/product_detail_locator.py

Test Setup          Start Test Case
Test Teardown       End Test Case

*** Test Cases ***
G-TCPDP1 Guest Customers Submit Product Reviews When Feature Guest Product Review Configuration Enable
    Go To Home Page
    Go To PLP
    Go To PDP From PLP    ${ProductSimpleNameForSearch}
    Fill in the Review    ${ProductReviewName}     ${ProductReviewTitle}    ${ProductReviewDetail}    
    Page Should Contain    You submitted your review for moderation

TCPDP4.2 Customers Add Product Configurable to the cart from PDP
    Go To Home Page
    Search Product    ${ProductConfigNameForSearch}
    Add Config Product To Cart From PDP    ${Size}    ${Colour}
    Wait Until Element Is Visible    xpath=${SuccessAddToCartAllert}

TCPDP8.Logged in user is able to add product to wish list and access the wishlist page
    Login User
    Go To Home Page
    Add Product to Wish List    ${ProductConfigNameForSearch}
    Wait for Wish List Page
    Validate Message Success Alert Is Visible

G-TCPDP9.Guest can add product and access comparison page
    Go To Home Page
    Add Product Compare List                            ${ProductConfigNameForSearch}
    Open Compare Page
    Verify First Product Name In Compare List           ${ProductConfigNameForSearch}

L-TCPDP10.Logged in user can add product and access comparison page
    Login User
    Go To Home Page
    Add Product Compare List                            ${ProductConfigNameForSearch}
    Open Compare Page
    Verify First Product Name In Compare List           ${ProductConfigNameForSearch}

TCPDP8.Logged in user is able to add product to wish list and access the wishlist page
    Login User
    Go To Home Page
    Add Product to Wish List    ${ProductConfigNameForSearch}
    Wait for Wish List Page
    Validate Message Success Alert Is Visible

G-TCPDP9.Guest can add product and access comparison page
    Go To Home Page
    Add Product Compare List                            ${ProductConfigNameForSearch}
    Open Compare Page
    Verify First Product Name In Compare List           ${ProductConfigNameForSearch}

L-TCPDP10.Logged in user can add product and access comparison page
    Login User
    Go To Home Page
    Add Product Compare List                            ${ProductConfigNameForSearch}
    Open Compare Page
    Verify First Product Name In Compare List           ${ProductConfigNameForSearch}
  

L-TCPDP1.Customer submit product reviews
    Login User
    Go To Product Detail Page
    Click Review Button
    Fill in the Review   ${ProductReviewName}    ${ProductReviewTitle}    ${ProductReviewDetail}   
    Click Submit Review Button  
    Validation Sucess Submit Review 

TCPDP4.1.Customers add product simple to the cart from PDP
    Login User
    Go To Product Detail Page
    Click Add To Cart Button

TCPDP4.2 Customers Add Product Configurable to the cart from PDP
    Go To Home Page
    Search Product    ${ProductConfigNameForSearch}
    Add Config Product To Cart From PDP    ${Size}    ${Colour}
    Wait Until Element Is Visible    xpath=${SuccessAddToCartAllert}


TCPDP8.Logged in user is able to add product to wish list and access the wishlist page
    Login User
    Go To Home Page
    Add Product to Wish List    ${ProductConfigNameForSearch}
    Wait for Wish List Page
    Validate Message Success Alert Is Visible

G-TCPDP9.Guest can add product and access comparison page
    Go To Home Page
    Add Product Compare List                            ${ProductConfigNameForSearch}
    Open Compare Page
    Verify First Product Name In Compare List           ${ProductConfigNameForSearch}
