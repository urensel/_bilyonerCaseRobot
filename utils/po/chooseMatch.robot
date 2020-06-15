*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chosenMatch}
${selector_chooseMatch}  class=icon-mbs--1
${chooseRate}  xpath=//*[@id="jsContent"]/div/div/div/div[1]/div[2]/div/div[1]/div[2]
${selector_closePopup}  xpath=//*[@id="root"]/div[1]/div[1]/div[3]/i

*** Keywords ***
wait until login button is visible
    Wait Until Element Is Visible  ${selector_chooseMatch}

clicked match button
    Click Element  ${selector_chooseMatch}

clicked close popup button
    Click Element   ${selector_closepopup}

manage window
    Press Keys  None  DOWN

clicked match rate
    Click Element  ${chooseRate}

get chosen match text
    ${chosenMatch} =  Get Text  class=match-card__header__content__teams
