*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

Resource     ../Resources/common.robot
Resource     ../Resources/navigate.robot
Resource     ../Resources/cart.robot



Test Setup     Prepare browser
Test Teardown  Close All Browsers

*** Test Cases ***
Add Products in Cart  #https://automationexercise.com/test_cases  Test Case 12
   [Tags]  smoke
   Navigating    ${URL2}   ${BUTTON_PRODUCTS}
   Go To    ${URL2}
   Add Product    ${add_to_cart_button}

Logging
   Log  miss you  WARN  True  True   Deprecated  str


