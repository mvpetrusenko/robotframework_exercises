*** Variables ***
${URL}=  https://automationexercise.com
${BROWSER}=  chrome

*** Keywords ***
Prepare browser
    Open Browser   ${URL}    ${BROWSER}
    Maximize Browser Window
