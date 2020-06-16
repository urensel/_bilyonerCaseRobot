*** Settings ***
Resource  ./utils.robot
Resource  ./po/chooseMatch.robot

*** Keywords ***
chooseMatch
    chooseMatch.wait until login button is visible
    chooseMatch.clicked match button
    BuiltIn.Sleep  1
    chooseMatch.clicked close popup button
    chooseMatch.manage window
    chooseMatch.clicked match rate
    chooseMatch.get chosen match text