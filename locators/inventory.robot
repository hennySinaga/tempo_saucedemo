*** Variables ***
${imageProduct}             //img[@class="inventory_item_img"]
${labelProductName}         //*[@class="inventory_item_name"]
${labelProductDesc}         //*[@class="inventory_item_desc"]
${labelProductPrice}        //*[@class="inventory_item_price"]
${buttonAddToCart}          //button[contains(text(),"Add to cart")]
${dropdownSortCatalogue}    //*[@data-test="product_sort_container"]