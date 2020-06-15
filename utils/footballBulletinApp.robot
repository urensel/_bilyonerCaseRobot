*** Settings ***
Resource  ./utils.robot
Resource  ./po/footballBulletin.robot

*** Keywords ***
go to bulletin
    footballBulletin.wait until login button is visible
    footballBulletin.clicked football bulletin button
