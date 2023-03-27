*** Settings ***
Documentation   Basic keyword commonly used
Library         SeleniumLibrary
Library         OperatingSystem

*** Variables ***
${BASE_URL}     https://www.saucedemo.com/
${BROWSER}      Google Chrome

*** Keywords ***
Go To Saucedemo
    [Documentation]  Go to saucedemo base url
    Go To  ${BASE_URL}

Open Chrome Browser
    [Documentation]  Open Chrome and maximize window
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.2
