*** Settings ***
Documentation       Suite description
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/product_detail_page.robot
Resource            ../pages/login_page.robot
Resource            ../pages/compare_page.robot
Variables           ../resources/data/testdata.py
Variables           ../resources/locators/product_detail_locator.py

Test Setup          Start Test Case
Test Teardown       End Test Case


*** Test Cases ***
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