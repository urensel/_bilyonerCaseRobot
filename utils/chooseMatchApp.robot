*** Settings ***
Resource  ./utils.robot
Resource  ./po/chooseMatch.robot

*** Keywords ***
chooseMatch
    BuiltIn.Sleep  1
    chooseMatch.manage window
    BuiltIn.Sleep  1
    chooseMatch.clicked match button
    BuiltIn.Sleep  1
    chooseMatch.clicked close popup button
    chooseMatch.manage window
    chooseMatch.clicked match rate
    chooseMatch.get chosen match text