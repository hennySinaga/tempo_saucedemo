*** Settings ***
Resource    ../utils/base.robot
Resource    ../locators/login.robot

*** Variables ***
${validUsername}    standard_user
${validPassword}    secret_sauce

*** Keywords ***
Input Email Saucedemo
    Wait Until Element Is Visible  ${inputUsername}
    Input Text    ${inputUsername}    ${validUsername}

Input Password Saucedemo
    Wait Until Element Is Visible    ${inputPassword}
    Input Text  ${inputPassword}  ${validPassword}

Click Login Button
    Wait Until Element Is Visible    ${buttonLogin}
    Click Element    ${buttonLogin}
