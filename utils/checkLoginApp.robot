*** Settings ***
Resource  ./utils.robot
Resource  ./po/checkLogin.robot

*** Keywords ***
checked username
    BuiltIn.Sleep  1
    checkLogin.checked username