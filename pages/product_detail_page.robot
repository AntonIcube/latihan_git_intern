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

*** Keywords ***
Go To Product Detail Page
   Click Element    ${IconToHomapage}
   Wait Until Element Is Visible in 10s  ${ProductItemLink}
   Click Element    ${ProductItemLink}

Click Review Button
    Click Element   ${ReviewRatingButton}
    Wait Until Element Is Visible   ${ReviewRatingInputValidation}

Fill in the Review
    [Arguments]  ${ReviewName}  ${ReviewTitle}  ${ReviewBody}
    Input Text      ${ReviewNameInput}      ${ReviewName}
    Click Element   ${ReviewRating}
    Input Text      ${ReviewTitleInput}     ${ReviewTitle}
    Input Text      ${ReviewBodyInput}      ${ReviewBody}

Click Submit Review Button
    Click Element   ${ReviewSubmitButton}

Validation Sucess Submit Review
   Page Should Contain    You submitted your review for moderation

Click Add To Cart Button
    Click Element   ${AddToCartButton}
    Wait Until Page Contains Element    ${AlertSuccessAddProductToCart}    timeout=10s
