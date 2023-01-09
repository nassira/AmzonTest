*** Variables ***
@{Adress}         amazontestt    xyzStreet07    Fes    50000    0615148600

*** Keywords ***
Address
    Sleep    1s
    Click Element    xpath://*[@id="address-ui-widgets-enterAddressFormContainer"]/div[1]/div/div[2]/span
    Click Element    xpath://*[@data-value="MA"]
    sleep    2s
    Input Text    xpath://*[@id="address-ui-widgets-enterAddressFullName"]    ${Adress}[0]
    Input Text    xpath://*[@id="address-ui-widgets-enterAddressLine1"]    ${Adress}[1]
    Input Text    xpath://*[@id="address-ui-widgets-enterAddressCity"]    ${Adress}[2]
    Input Text    xpath://*[@id="address-ui-widgets-enterAddressPostalCode"]    ${Adress}[3]
    Input Text    xpath://*[@id="address-ui-widgets-enterAddressPhoneNumber"]    ${Adress}[4]
    #Select Checkbox    xpath://*[@name="address-ui-widgets-use-as-my-default"]
    Click Element    xpath://*[@id="address-ui-widgets-enterAddressFormContainer"]/span

plusieursAdresses
    Sleep    2S
    Page Should Contain Element    xpath://div[@id="shipmultiplebox"]/a
    Click Element    xpath://*[@id="shipmultiplebox"]/a

Deliver_to_this_Address
    Click Element    xpath://a[contains(text(),"this address")]
