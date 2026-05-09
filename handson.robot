*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:blank    chrome

*** Variables ***
${BANK_URL}            https://parabank.parasoft.com/parabank/index.htm


*** Test Cases ***

Login to Application
    [Documentation]    This is login test case for Parabank suite
    [Tags]             smoke
    Goto               ${BANK_URL}
    ClickText          Register
    VerifyText         Signing up is easy!
