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
Resource            ../pages/compare_page.robot
Resource            ../pages/cart_page.robot
Test Setup          Start Test Case
Test Teardown       End Test Case

# *** Test Cases ***
