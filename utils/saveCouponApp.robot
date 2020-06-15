*** Settings ***
Resource  ./utils.robot
Resource  ./po/saveCoupon.robot

*** Keywords ***
save coupon
    saveCoupon.wait until coupon button is visible
    saveCoupon.clicked coupon button
    saveCoupon.wait until save coupon button is visible
    saveCoupon.clicked save coupon button
