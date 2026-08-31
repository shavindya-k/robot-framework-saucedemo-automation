*** Variables ***

# Login locators
${LOGIN_USERNAME_INPUT}    id=user-name
${LOGIN_PASSWORD_INPUT}    id=password
${LOGIN_BUTTON}            id=login-button
${ERROR_NOTIFICATION}      css=[data-test="error"]

# Login credentials
${STANDARD_USER}        standard_user
${STANDARD_PASSWORD}    secret_sauce
${LOCKED_OUT_USER}      locked_out_user

# Error messages
${ERROR_INVALID_CREDENTIALS}    Epic sadface: Username and password do not match any user in this service
${ERROR_LOCKED_USER}            Epic sadface: Sorry, this user has been locked out.
${ERROR_USERNAME_REQUIRED}      Epic sadface: Username is required
${ERROR_PASSWORD_REQUIRED}      Epic sadface: Password is required