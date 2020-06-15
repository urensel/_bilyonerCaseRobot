*** Settings ***
Resource  ./utils.robot
Resource  ./po/signIn.robot

*** Keywords ***
open account menu
    BuiltIn.Sleep  1
    signIn.wait until login button is visible
    signIn.clicked login button
    signIn.wait Until tckn Is visible
    signIn.input text to tckn box
    signIn.wait Until password Is visible
    signIn.input text to password box
    signIn.clicked enterLogin button