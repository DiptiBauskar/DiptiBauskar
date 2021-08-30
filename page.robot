*** Settings ***
Resource          imports.robot

*** Keywords ***
OpenUrl
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window

Shop_Mobile
    [Arguments]    ${mobile_added_to_cart}
    Click Element    ${mobile_button}
    Click Element    ${mobiles_tab}
    Wait Until Element is Visible    ${shop_now-button}
    Click Element    ${shop_now-button}
    Wait Until Element is Visible    //div[contains(text(),"${mobile_added_to_cart}")]
    Click Element    //div[contains(text(),"${mobile_added_to_cart}")]

Add_to_cart
    Switch Window    New
    Wait Until Element is Visible    ${add_to_cart_button}
    Click Element    ${add_to_cart_button}

Verify_the product
    [Arguments]    ${verification}
    Sleep    3
    Current Frame Should Contain    ${verification}
    #Capture Page Screenshot
    Set Screenshot Directory    ${CURDIR}

CloseBrowser
    Close All Browsers
