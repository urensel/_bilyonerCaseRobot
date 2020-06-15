*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_bulletin}  xpath=//*[@id="root"]/div[1]/div[2]/a[2]/div[1]


*** Keywords ***
wait until login button is visible
    Wait Until Element Is Visible  ${selector_bulletin}

clicked football bulletin button
    Click Element  ${selector_bulletin}
