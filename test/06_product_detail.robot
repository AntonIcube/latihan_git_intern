*** Settings ***
Documentation       Suite description
Variables           ../resources/data/testdata.py
Resource            ../base/setup.robot
Resource            ../base/base.robot
Resource            ../pages/login_page.robot
Resource            ../pages/product_detail_page.robot

Test Setup          Start Test Case
Test Teardown       End Test Case

  

*** Test Cases ***
L-TCPDP1.Customer submit product reviews
    Login User
    Go To Product Detail Page
    Click Review Button
    Fill in the Review   ${ReviewName}  ${ReviewTitle}  ${ReviewBody}
    Click Submit Review Button  
    Validation Sucess Submit Review 

TCPDP4.1.Customers add product simple to the cart from PDP
    Login User
    Go To Product Detail Page
    Click Add To Cart Button

