*** Variables ***
${URL2}=                  https://automationexercise.com/products
${BUTTON_PRODUCTS}=       xpath://a[@href='/products']
${home_element}=          xpath://a[@href='/']

*** Keywords ***
Navigating
    [Arguments]   ${URL2}   ${BUTTON_PRODUCTS}
    Wait Until Element Is Visible  ${home_element}  timeout=10s
    Click Link  ${BUTTON_PRODUCTS}




