*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${homepage}  https://www.bilyoner.com/


*** Keywords ***
go to site
    go to  ${homepage}
