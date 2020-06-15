*** Settings ***
Resource  ./utils.robot
Resource  ./po/myCoupons.robot

*** Keywords ***
go to site
    myCoupons.go to coupon site
    myCoupons.checked site
    myCoupons.checked match