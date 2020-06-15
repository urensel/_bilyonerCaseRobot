*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_signInButton}  class=btn-login
${selector_tckn}  id=username
${selector_password}  id=password
${selector_enterLogin}  xpath=//*[@id="root"]/div[1]/div[1]/div[3]/div/div[3]/form/div[3]/button
${selector_checkUsername}  class=account-info__detail__name
${text_tckn}  12345678911
${text_password}  Qwerty12345

*** Keywords ***
wait until login button is visible
    Wait Until Element Is Visible  ${selector_signInButton}

clicked login button
    Click Element  ${selector_signInButton}

wait Until tckn Is visible
    Wait Until Element Is Visible  ${selector_tckn}

input text to tckn box
    Input text  ${selector_tckn}  ${text_tckn}

wait Until password Is visible
    Wait Until Element Is Visible  ${selector_password}

input text to password box
    Input text  ${selector_password}  ${text_password}

clicked enterLogin button
    Click Element  ${selector_enterLogin}