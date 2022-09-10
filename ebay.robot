*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
eBay search - Porsche
  Open Browser  https://www.ebay.com  chrome
  Search for Term  Porsche


*** Keywords ***
Search for Term
  [Arguments]  ${search}
  Input Text    xpath://input[@placeholder="Search for anything"]    ${search}
  Click Button    xpath://input[@value="Search"]

