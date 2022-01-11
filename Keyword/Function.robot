*** Settings ***
Library  SeleniumLibrary
Resource  ${EXECDIR}/TestCase/Lanuch.robot

*** Keywords ***

Lunch The Url
    Open Browser    https://www.orangehrm.com/   Chrome
    Maximize Browser Window
Accept the Cookies
    BuiltIn.sleep   5s
    Wait Until Element Is Visible   //div[@class="optanon-alert-box-bg"]    error=Cookies Not Visible
    Click Element   //a[@class="optanon-allow-all accept-cookies-button"]
Move To Contact Sales Page
    Wait Until Element Is Visible   //a[@class="btn-orange trial-btn pulse "]
    Click Element   //a[@class="btn-orange trial-btn pulse "]
