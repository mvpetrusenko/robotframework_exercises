*** Settings ***
Library    SeleniumLibrary
*** Variables ***

${add_to_cart_button}=  xpath://div[contains(@class,"product-overlay")]//a[@data-product-id="1"]
${overlay_button}=  xpath://div[contains(@class,"productinfo")]//a[@data-product-id="1"]
${continue_button}=    xpath://button[contains(@class, "btn-success")]
${second_product_button}=  xpath://div[contains(@class,"product-overlay")]//a[@data-product-id="2"]
${overlay_second}=  xpath://div[contains(@class,"productinfo")]//a[@data-product-id="2"]
${view_cart_button}=  xpath://div[contains(@class,"modal-body")]//a[@href="/view_cart"]
${first_product_image}=  xpath://td[contains(@class, "cart_product")]//img[@src="get_product_picture/1"]
${second_product_image}=  xpath://td[contains(@class, "cart_product")]//img[@src="get_product_picture/2"]
${table}=   xpath://table[contains(@class, "table-condensed")]



*** Keywords ***
Add Product
     [Arguments]   ${add_to_cart_button}
     Mouse Over   ${add_to_cart_button}
     Sleep   5s
     Click Element   ${overlay_button}
     Sleep   5s
     Click Button    ${continue_button}
     Mouse Over    ${second_product_button}
     Sleep   5s
     Click Element    ${overlay_second}
     Sleep   5s
     Click Link    ${view_cart_button}
     Sleep   5s

Verify Products in Cart
     [Arguments]
     Page Should Contain    ${first_product_image}
     Page Should Contain    ${second_product_image}
     Table Should Contain    ${table}    Rs. 500
     Table Should Contain    ${table}    1
     Table Should Contain    ${table}    Rs. 400
     Table Should Contain    ${table}    2
     Table Should Contain    ${table}    Rs. 800

