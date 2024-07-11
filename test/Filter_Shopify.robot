*** Settings ***
Documentation       Suite description
Variables           ../resources/locators/product_list_locator.py
Variables           ../resources/locators/base_locator.py
Variables           ../resources/locators/compare_locator.py
Variables           ../resources/locators/filter_sort_shopify.py
Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/home_page.robot
Resource            ../pages/login_page.robot
Resource            ../pages/filter_sort.robot
Test Setup          Start Test Case
Test Teardown       End Test Case

*** Test Cases ***
TCF1.Filter Products by Availability
    Login User
    Go to Homepage
    Click on Filter and Sort Link
    Select Filter by Availibility
    Apply the Filter 
    Validate the Availibility Filter
    
TCF5.Clear All Applied Filters
    Login User
    Go to Homepage
    Click on Filter and Sort Link
    Select Any Filter    
    Click Clear All Filter   

