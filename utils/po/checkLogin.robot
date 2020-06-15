*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_enterLogin}  xpath=//*[@id="root"]/div[1]/div[1]/div[3]/div/div[3]/form/div[3]/button


*** Keywords ***
checked username
    Page Should Contain Element  ${selector_checkUsername}