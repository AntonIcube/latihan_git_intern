*** Settings ***
Library     SeleniumLibrary
Library     String
Variables   ../resources/data/testdata.py
Variables   ../resources/locators/base_locator.py


*** Variables ***
${BROWSER}    Chrome

*** Keywords ***
Start Test
    Go to                                                   ${URLWEB}
    Maximize Browser Window
    Execute JavaScript    document.body.style.zoom = "100%"
    Set selenium speed                                      1

Start Test Case
    @{Browser_id}=                                          Get Browser Ids
    Run Keyword if                                          @{Browser_id}==[]                   Start Test
    # Close Newsletter Popup
