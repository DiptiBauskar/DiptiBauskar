*** Settings ***
Suite Teardown    CloseBrowser
Test Template     Generic_flow
Resource          imports.robot
Resource          page.robot

*** Test Cases ***
Flipkart_automation
    Genric_flow

*** Keywords ***
Generic_flow
    [Arguments]    ${url}    ${mobile_added_to_cart}    ${verification}
    OpenUrl    ${url}
    Shop_Mobile    ${mobile_added_to_cart}
    Add_to_cart
    Verify_the product    ${verification}
