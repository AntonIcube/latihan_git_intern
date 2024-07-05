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
Go To PDP From PLP 
    [Arguments]    ${value}
    Click Element    xpath=${ProductItemCardName.format("${value}")}

Fill in the Review 
    [Arguments]    ${name}    ${rating}    ${title}    ${body}
    Click Element    xpath=${AddReviewButton}
    Input Text    xpath=${NameReviewer}    ${name}
    Click Element    xpath=${RatingReviewer.format("${rating}")}
    Input Text    xpath=${ReviewReviewer}    ${title}
    Input Text    xpath=${BodyReviewer}    ${body}
    Click Element    xpath=${ButtonSubmitReview}
    

Add Config Product To Cart From PDP
    [Arguments]    ${size}    ${colour}
    Click Element    xpath=${sizeConfig.format("${size}")}
    Click Element    xpath=${colourConfig.format("${colour}")}
    Click Element    xpath=${ProductItemAddToCartButton}