*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary
Resource  ../utils/utils.robot
Resource  ../utils/homepageApp.robot
Resource  ../utils/signInApp.robot
Resource  ../utils/checkLoginApp.robot
Resource  ../utils/footballBulletinApp.robot
Resource  ../utils/chooseMatchApp.robot
Resource  ../utils/saveCouponApp.robot
Resource  ../utils/myCouponsApp.robot
Resource  ../utils/deleteCouponApp.robot
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
go to homepage
    homepageApp.go to homepage
    signInApp.open account menu
    BuiltIn.Sleep  1
    checkLoginApp.checked username
    footballBulletinApp.go to bulletin
    chooseMatchApp.chooseMatch
    saveCouponApp.save coupon
    myCouponsApp.go to site
    deleteCouponApp.delete coupon