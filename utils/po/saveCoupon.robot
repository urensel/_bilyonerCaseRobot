*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_couponSymbol}  class=btn--atrium
${selector_saveCoupon}  xpath=//*[@id="root"]/div[4]/div/div[1]/i[2]

*** Keywords ***
wait until coupon button is visible
    Wait Until Element Is Visible  ${selector_couponSymbol}

clicked coupon button
    Click Element  ${selector_couponSymbol}

wait until save coupon button is visible
    Wait Until Element Is Visible  ${selector_saveCoupon}

clicked save coupon button
    Click Element  ${selector_saveCoupon}