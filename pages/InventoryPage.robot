*** Settings ***
Resource    ../utils/base.robot
Resource    ../locators/inventory.robot
Resource    ../locators/inventoryDetail.robot

*** Keywords ***
Assert Inventory Page Is Visible
    Wait Until Element Is Visible    ${imageProduct}
    Wait Until Element Is Visible    ${labelProductName}
    Wait Until Element Is Visible    ${labelProductDesc}
    Wait Until Element Is Visible    ${labelProductPrice}
    Wait Until Element Is Visible    ${buttonAddToCart}
    Wait Until Element Is Visible    ${dropdownSortCatalogue}

Open Random Inventory Detail
    Wait Until Element Is Visible    ${labelProductName}
    ${catalogueCount}    Get Element Count    ${labelProductName}
    ${catalogueIndex}    Evaluate    random.randint(1,${catalogueCount})
    Click Element    (${labelProductName}) [${catalogueIndex}]

Assert Inventory Detail Page Is Visible
    Wait Until Element Is Visible    ${imageDetailImage}
    Wait Until Element Is Visible    ${labelDetailName}
    Wait Until Element Is Visible    ${labelDetailDesc}
    Wait Until Element Is Visible    ${labelDetailPrice}
    Wait Until Element Is Visible    ${buttonDetailAddToCart}
    Wait Until Element Is Not Visible    ${buttonDetailRemoveFromCart}

Click Add To Cart On Inventory Detail Page
    Wait Until Element Is Visible    ${buttonDetailAddToCart}
    Click Element    ${buttonDetailAddToCart}

Assert Inventory Added To Cart on Inventory Detail Page
    Wait Until Element Is Visible    ${buttonDetailRemoveFromCart}
    Wait Until Element Is Not Visible    ${buttonDetailAddToCart}
