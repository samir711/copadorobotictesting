
*** Settings ***

Documentation    A test suite for valid login. Manju test
Library          QWeb
Suite Setup      OpenBrowser                 about: blank    chrome

*** Test Cases ***

FlowLogin
    [Documentation]   Flow test Login script
    GoTo              https://practicetestautomation.com/practice-test-login/
    TypeText          Username          student
    TypeSecret        Password          Password123
    VerifyText        Password123
    ClickText         Password123
    CopyText          Password123
    VerifyText        •••••••••••
    TypeSecret        Password          Password123
    ClickText         Submit
    VerifyText        Password123
    ClickText         Password123
    CopyText          Password123
    TypeSecret        Password          Password123
    TypeText          Username          student
    ClickText         Submit
    ClickItem         Practice Test Automation
