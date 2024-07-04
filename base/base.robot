*** Settings ***
Library     SeleniumLibrary
Library     String
Variables   ../resources/data/testdata.py
Variables   ../resources/locators/base_locator.py


*** Variables ***
${BROWSER}    Chrome
${ChromeDriverPath}    ${CURDIR}/../chromedriver
*** Keywords ***
Start Test
    Create WebDriver    ${BROWSER}      
    # ...    executable_path=${ChromeDriverPath} 
    Go To  ${URLWEB}
    Maximize Browser Window
    Execute JavaScript    document.body.style.zoom = "100%"
    Set selenium speed                                      1


