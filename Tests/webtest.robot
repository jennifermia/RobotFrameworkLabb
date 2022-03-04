*** Settings ***
Documentation  Some basic infomation about the whole test suite
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  DateTime
Suite Setup     Begin Web Test
Suite Teardown  End Web Test



*** Test Cases ***
Verify That Start Date Selection Value Is Current Date
    [Documentation]  On the date selection page, the default value for start date should always be put as todays date.
    [Tags]  Date Selection
    User Can Access Website
    Start Date Should Be Current Date

Header Is Visible On Every Page
    [Documentation]  The header should be available on every page
    [Tags]  Header
    User Can Access Website
    User Log In
    #Header On Signed In Page
    Header On My Page
    Header On About Page
    Header On Start Page
    Header On Show Cars Page
    Header On Confirm Book Page
