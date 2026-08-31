*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Test Tags    FEATURES    Login
Documentation    Automated tests for the SauceDemo login functionality.

Test Setup    Open Chrome Driver
Test Teardown    Close All Driver

*** Test Cases ***

Login Test: Successful Login With Valid Credentials
    [Tags]  LOGIN-001-VALID_LOGIN
    Successful Login    ${STANDARD_USER}  ${STANDARD_PASSWORD}

Login Test 2: Login Fails With Invalid Username
    [Tags]  LOGIN-002-INVALID_USERNAME
    Unsuccessful Login    standard_user1  ${STANDARD_PASSWORD}   ${ERROR_INVALID_CREDENTIALS}

Login Test 3: Login Fails With Invalid Password
    [Tags]  LOGIN-003-INVALID_PASSWORD
    Unsuccessful Login    ${STANDARD_USER}  secret_sauce1  ${ERROR_INVALID_CREDENTIALS}

Login Test 4: Locked-Out User Cannot Login
    [Tags]  LOGIN-004-LOCKED_OUT_USER
    Unsuccessful Login    ${LOCKED_OUT_USER}  ${STANDARD_PASSWORD}  ${ERROR_LOCKED_USER}

Login Test 5: Login Fails When Username Is Empty
    [Tags]  LOGIN-005-EMPTY_USERNAME
    Unsuccessful Login    ${EMPTY}      ${STANDARD_PASSWORD}  ${ERROR_USERNAME_REQUIRED}

Login Test 6: Login Fails When Password Is Empty
    [Tags]  LOGIN-006-EMPTY_PASSWORD
    Unsuccessful Login    ${STANDARD_USER}     ${EMPTY}      ${ERROR_PASSWORD_REQUIRED}

Login Test 7: Login Fails When Username Case is Different
    [Tags]  LOGIN-007-CASE_SENSITIVE_USERNAME
    Unsuccessful Login    Standard_user  ${STANDARD_PASSWORD}      ${ERROR_INVALID_CREDENTIALS}

Login Test 8: Login Fails When Password Case is Different
    [Tags]  LOGIN-008-CASE_SENSITIVE_PASSWORD
    Unsuccessful Login    ${STANDARD_USER}  Secret_sauce      ${ERROR_INVALID_CREDENTIALS}