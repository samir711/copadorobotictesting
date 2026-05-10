*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:blank             chrome

*** Variables ***
${BANK_URL}            https://parabank.parasoft.com/parabank/index.htm


*** Test Cases ***
Login to Application
    [Documentation]    This is login test case for Parabank suite
    [Tags]             smoke
    Goto               ${BANK_URL}
    ClickText          Register
    VerifyText         Signing up is easy!
    TypeText           First Name                  Samir
    TypeText           Last Name                   Arora
    TypeText           Address                     38 FallMeadow Cricle
    TypeText           City                        Brampton
    TypeText           State                       Ontario
    TypeText           Zip Code                    L6Y 0Y8
    TypeText           Phone                       4373441108
    TypeText           SSN                         12345612771
    TypeText           Username                    samir714                anchor=SSN
    TypeText           Password                    copadouser1            anchor=Confirm
    Typetext           Confirm                     copadouser1
    ClickText          REGISTER                    anchor=Confirm

Open New Account
    [Tags]             sanity
    ClickText          Open New Account
    DropDown           type                        SAVINGS
    DropDown           type                        CHECKING
    ClickText          Open New Account            anchor=Log Out
    VerifyText         Congratulations
    ClickItem          newAccountId
    # ClickText        29661
    DropDown           month                       January
    DropDown           transactionType             Credit
    ClickText          Go
