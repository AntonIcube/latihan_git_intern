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