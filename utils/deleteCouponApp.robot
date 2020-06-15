*** Settings ***
Resource  ./utils.robot
Resource  ./po/deleteCoupon.robot

*** Keywords ***
delete coupon
    deleteCoupon.wait until delete button is visible
    deleteCoupon.clicked delete button
    deleteCoupon.wait until delete confirm button is visible
    deleteCoupon.clicked delete confirm button
