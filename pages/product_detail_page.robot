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

Variables       ../resources/locators/wishlist_page_locator.py

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


Go To PDP From PLP 
    [Arguments]    ${value}
    Click Element    xpath=${ProductItemCardName.format("${value}")}    

Add Config Product To Cart From PDP
    [Arguments]    ${size}    ${colour}
    Click Element    xpath=${sizeConfig.format("${size}")}
    Click Element    xpath=${colourConfig.format("${colour}")}
    Click Element    xpath=${ProductItemAddToCartButton}

Click Add to Wish List Button
    Click Button        ${AddToWishListButton}


Click Add to Wish List Button
    Click Button        ${AddToWishListButton}

Add Product to Wish List
    [Arguments]                ${ProductName}
    Input Search Box           ${ProductName}      
    Press Enter Keyboard
    Wait for PDP Visible
    Click Add to Wish List Button

Wait for Wish List Page
    Wait Until Element Is Visible    ${ProductWishlist}

Wait for PDP Visible
    Wait Until Element Is Visible    ${PDPProductName}
Check Product Name
    [Arguments]        ${ProductName}
    Element Should Contain    ${PDPProductName}    ${ProductName}
Click Compare Product Button
    Click Button        ${CompareProductButton}