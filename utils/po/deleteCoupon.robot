*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${selector_deleteBtn}  css=#root > div.page.page--coupons > div.coupons__content > div > div > div:nth-child(2) > div > div:nth-child(1) > div.coupon-row__header > i.icon.ic_trash.coupon-row__header__trash > svg > use
${selector_deleteConfirm}  xpath=/html/body/div[5]/div/div/div[2]/div[2]/div[3]/div[1]/button
*** Keywords ***
wait until delete button is visible
    Wait Until Element Is Visible  ${selector_deleteBtn}

clicked delete button
    Click Element  ${selector_deletebtn}

wait until delete confirm button is visible
    Wait Until Element Is Visible  ${selector_deleteconfirm}

clicked delete confirm button
    Click Element  ${selector_deleteconfirm}