*** Settings ***

Resource  ../sources/steps.robot
Resource  ../sources/variables.robot

*** Keywords ***
Successful Login
    [Arguments]     ${username}    ${password}
    Element Visible And Input Text    ${LOGIN_USERNAME_INPUT}       ${username}
    Element Visible And Input Text    ${LOGIN_PASSWORD_INPUT}       ${password}
    Element Visible And Click   ${LOGIN_BUTTON}
    Verify Page Re-direction    /inventory.html

Unsuccessful Login
    [Arguments]     ${username}    ${password}     ${error_text}
    Element Visible And Input Text    ${LOGIN_USERNAME_INPUT}       ${username}
    Element Visible And Input Text    ${LOGIN_PASSWORD_INPUT}       ${password}
    Element Visible And Click   ${LOGIN_BUTTON}
    Verify Error Message    ${ERROR_NOTIFICATION}         ${error_text}