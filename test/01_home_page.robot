*** Settings ***
Documentation       Suite description
Variables           ../resources/locators/product_list_locator.py
Variables           ../resources/locators/base_locator.py
Variables           ../resources/locators/compare_locator.py
Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/home_page.robot
Resource            ../pages/login_page.robot
Resource            ../pages/product_detail_page.robot
Resource            ../pages/product_detail_page.robot
Resource            ../pages/compare_page.robot
# Resource            ../pages/cart_page.robot
# Resource            ../pages/cart_page.robot
Test Setup          Start Test Case
Test Teardown       End Test Case

*** Test Cases ***
G-TCH1.Guest customers can access the "Compare Product" page
    ${Product1}=            Set Variable        ${ProductConfigNameForSearch}
    ${Product2}=            Set Variable        ${ProductBundleNameForSearch}

    #add product 1 to compare list
    Go To Home Page
    Add Product Compare List        ${Product1}

    #add product 2 to compare list
    Go To Home Page
    Add Product Compare List        ${Product2}

    Open Compare Page
    Verify First Product Name In Compare List        ${Product1}
    Verify Second Product Name In Compare List       ${Product2}

TCSe3.Successful Specific Product Search using Website's Search Box
    Input Search Box      ${ProductConfigNameForSearch}      
    Verify Suggested Search
    Press Enter Keyboard
    Wait for PDP Visible
    Check Product Name    ${ProductConfigNameForSearch} 

L-TCH1.Logged-in customers can access the "Compare Product" page
    ${Product1}=            Set Variable        ${ProductConfigNameForSearch}
    ${Product2}=            Set Variable        ${ProductBundleNameForSearch}

    # login
    Login User
    
    #add product 1 to compare list
    Go To Home Page
    Add Product Compare List        ${Product1}

    #add product 2 to compare list
    Go To Home Page
    Add Product Compare List        ${Product2}

    Open Compare Page
    Verify First Product Name In Compare List        ${Product1}
    Verify Second Product Name In Compare List       ${Product2}

TCSe3.Successful Specific Product Search using Website's Search Box
    Input Search Box      ${ProductConfigNameForSearch}      
    Verify Suggested Search
    Press Enter Keyboard
    Wait for PDP Visible
    Check Product Name    ${ProductConfigNameForSearch} 

L-TCH1.Logged-in customers can access the "Compare Product" page
    ${Product1}=            Set Variable        ${ProductConfigNameForSearch}
    ${Product2}=            Set Variable        ${ProductBundleNameForSearch}

    # login
    Login User
    
    #add product 1 to compare list
    Go To Home Page
    Add Product Compare List        ${Product1}

    #add product 2 to compare list
    Go To Home Page
    Add Product Compare List        ${Product2}

    Open Compare Page
    Verify First Product Name In Compare List        ${Product1}
    Verify Second Product Name In Compare List       ${Product2}

G-TCH1.Guest customers can access the "Compare Product" page
    ${Product1}=            Set Variable        ${ProductConfigNameForSearch}
    ${Product2}=            Set Variable        ${ProductBundleNameForSearch}

    #add product 1 to compare list
    Go To Home Page
    Add Product Compare List        ${Product1}

    #add product 2 to compare list
    Go To Home Page
    Add Product Compare List        ${Product2}

    Open Compare Page
    Verify First Product Name In Compare List        ${Product1}
    Verify Second Product Name In Compare List       ${Product2}