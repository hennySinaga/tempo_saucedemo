*** Settings ***
Resource    ../utils/base.robot
Resource    ../locators/cart.robot

*** Keywords ***
Assert Cart Page Is Visible
    Wait Until Element Is Visible    ${labelYourCart}
    Wait Until Element Is Visible    ${buttonContinueShopping}

Assert Cart Is Empty
    Wait Until Element Is Not Visible    ${containerCartItem}

Assert Cart Not Empty
    Wait Until Element Is Visible    ${containerCartItem}
    ${itemCount}    Get Element Count    ${containerCartItem}
    Should Not Be Equal As Integers  ${itemCount}  0

Click Cart Icon
    Wait Until Element Is Visible    ${iconCart}
    Click Element    ${iconCart}
