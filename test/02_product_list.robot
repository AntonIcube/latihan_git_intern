*** Settings ***
Library    String
Documentation   Suite description
Resource    ../base/setup.robot
Resource    ../base/base.robot
Resource    ../base/common.robot
Resource    ../pages/home_page.robot
Resource    ../pages/product_list_page.robot
Resource    ../pages/product_detail_page.robot
Variables    ../resources/locators/home_locator.py
Variables    ../resources/locators/product_list_locator.py
Variables    ../resources/data/testdata.py


Test Setup          Start Test Case
Test Teardown       End Test Case


*** Test Cases ***
TCPLP1.Customer Able To Change Product View As Grid On PLP
    Go To Home Page
    Go To PLP
    Change View As List
    Change View As Grid  

TCPLP2.1 Customer Add Simple Product To The Cart From PLP
    Go To Home Page
    Go To PLP
    Add Product To Cart From PLP    ${ProductSimpleNameForSearch}