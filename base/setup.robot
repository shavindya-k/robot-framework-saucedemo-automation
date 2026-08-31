*** Settings ***
Library    SeleniumLibrary
Resource  ../sources/variables.robot

*** Keywords ***
Open Chrome Driver
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Close All Driver
    Close All Browsers