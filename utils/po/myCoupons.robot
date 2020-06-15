*** Settings ***
Library  SeleniumLibrary
Resource  ./chooseMatch.robot
*** Variables ***
${homeName}
${awayName}
${couponPage}  https://www.bilyoner.com/kuponlarim/iddaa/kayitli
${pageTitle}  İddaa Kuponlarım | Bilyoner
*** Keywords ***
go to coupon site
    go to  ${couponPage}

checked site
    Title Should Be  ${pageTitle}

checked match
    ${homeName} =  get text  xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div/div[2]/div/div[1]/div[1]/div/span[1]
    ${awayName} =  get text  xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div/div[2]/div/div[1]/div[1]/div/span[2]
    Should Not Be Equal As Strings  ${chosenmatch}  ${homeName}"-"${awayName}
