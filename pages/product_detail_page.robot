*** Settings ***
Library         SeleniumLibrary
Library         Collections
Resource        ../base/common.robot
Resource        ../base/base.robot
Resource        ../pages/home_page.robot
Resource        ../pages/product_list_page.robot
Variables       ../resources/locators/product_detail_locator.py
Variables       ../resources/locators/login_locator.py
Variables       ../resources/locators/my_account_locator.py
Variables       ../resources/locators/product_list_locator.py


# *** Keywords ***
