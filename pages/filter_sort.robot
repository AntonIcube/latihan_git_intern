*** Settings ***
Library         SeleniumLibrary
Library         Collections
Variables       ../resources/locators/login_locator.py
Variables       ../resources/locators/home_locator.py
Variables       ../resources/locators/my_account_locator.py
Resource        ../base/common.robot


*** Keywords ***
Go to Homepage
    Click Element   ${LinkToAllProduct}
    Wait Until Element Is Visible in 10s  ${LinkFilterSort}

Click on Filter and Sort Link
    Click Element    ${LinkFilterSort} 
    Wait Until Element Is Visible  ${FormFilterSort}

Select Filter by Availibility
    Click Element       ${FilterAvailibility}
    Click Element    ${AvailibilityInStock}

Apply the Filter 
    Wait Until Element Is Visible in 10s   ${ApplyButton}
    Click Element       ${ApplyButton}

Validate the Availibility Filter
    Wait Until Element Is Visible   ${ValideFilterAvailibility}

Select Any Filter
    Click Element       ${FilterAvailibility}
    Click Element    ${AvailibilityInStock}
    Click Element    ${BackButtonAvailibility}
    Click Element     ${FilterType}
    Click Element       ${TypeSubscription}
    Wait Until Element Is Visible With Long Time    ${BackButtonType}
    Click Element    ${BackButtonType}

Click Clear All Filter
    Click Element       ${ClearAllFilter}