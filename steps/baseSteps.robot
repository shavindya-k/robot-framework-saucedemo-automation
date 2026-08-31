*** Settings ***

Resource  ../sources/steps.robot
Resource  ../sources/variables.robot
Resource  ../base/setup.robot

*** Keywords ***

Wait Until Element Is Visible With Timeout
    [Arguments]     ${locator_element}
    wait until element is visible  ${locator_element}  ${DEFAULT_TIMEOUT}
    scroll element into view  ${locator_element}

Element Visible And Click
    [Arguments]  ${locator_element}
    Wait Until Element Is Visible With Timeout  ${locator_element}
    click element  ${locator_element}

Element Visible And Input Text
    [Arguments]  ${locator_element}  ${input_text}
    Wait Until Element Is Visible With Timeout  ${locator_element}
    input text  ${locator_element}   ${input_text}

Verify Page Re-direction
    [Arguments]  ${location}
    Location Should Contain    ${location}

Verify Error Message
    [Arguments]  ${locator_element}  ${error_text}
    Wait Until Element Is Visible With Timeout  ${locator_element}
    Element Text Should Be    ${locator_element}   ${error_text}