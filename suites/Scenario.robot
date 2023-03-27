*** Settings ***
Resource    ../utils/base.robot
Resource    ../pages/LoginPage.robot
Resource    ../pages/InventoryPage.robot
Resource    ../pages/CartPage.robot

Test Setup  Open Chrome Browser
Test Teardown  Close Browser

*** Test Cases ***
User Successfully Login, View Catalogue and Add To Cart
    [Documentation]     User login, view inventory detail and add to cart
    [Tags]              login  detailInventory  addToCart  endToEnd
    #login
    Go To Saucedemo
    Input Email Saucedemo
    Input Password Saucedemo
    Click Login Button
    Assert Inventory Page Is Visible

    #open catalogue detail
    Open Random Inventory Detail
    Assert Inventory Detail Page Is Visible

    #add to cart
    Click Add To Cart On Inventory Detail Page
    Assert Inventory Added To Cart on Inventory Detail Page

    #assert cart page
    Click Cart Icon
    Assert Cart Page Is Visible
    Assert Cart Not Empty
