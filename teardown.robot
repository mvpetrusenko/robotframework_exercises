*** Settings ***
Documentation  Automated tests of eBay search
Library  SeleniumLibrary
Test Setup  Open Browser  https://www.ebay.com  chrome
Test Teardown  Close Browser


*** Test Cases ***
eBay search - Porsche
  [Documentation]  Search for term "Porsche" and check search result
  Search for Term  Porsche

*** Test Cases ***
eBay search - Mustang
  [Documentation]  Search for term "Porsche" and check search result
  Search for Term  Mustang

*** Test Cases ***
eBay search - BMW
  [Documentation]  Search for term "Porsche" and check search result
  Search for Term  BMW

*** Keywords ***
Search for Term
  [Arguments]  ${search}
  Input Text    xpath://input[@placeholder="Search for anything"]    ${search}
  Click Button    xpath://input[@value="Search"]
  Wait Until Element Is Visible    xpath://input[@placeholder="Search for anything"]  timeout=5s
  Element Should Contain    xpath://html    ${search}
