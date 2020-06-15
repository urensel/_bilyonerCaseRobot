*** Settings ***
Resource  ./utils.robot
Resource  ./po/homepage.robot

*** Keywords ***
go to homepage
    homepage.go to site
