*** Variables ***
@{Credit_Card_Info}    4970498302650258    Visa    4    2023

*** Keywords ***
Creditards
    Sleep    8s
    #Page Should Contain Element    xpath://span[@id="apx-add-credit-card-action-test-id"]/span//span/input[1]
    Click Element    xpath://span[@id="apx-add-credit-card-action-test-id"]/span//span/input[1]
    Sleep    5s
    Select Frame    xpath://div[@class="a-column a-span9 pmts-payment-instruments-container-classic pmts-add-payment-instruments-wrapper"]/iframe
    Input Text    xpath://*[@name="addCreditCardNumber"]    ${Credit_Card_Info}[0]
    Input Text    xpath://*[@name="ppw-accountHolderName"]    ${Credit_Card_Info}[1]
    Select From List By Value    xpath://*[@name="ppw-expirationDate_month"]    ${Credit_Card_Info}[2]
    Select From List By Value    xpath://*[@name="ppw-expirationDate_year"]    ${Credit_Card_Info}[3]
    #Input Text    xpath://*[@name="addCreditCardVerificationNumber"]    600
    Click Element    xpath://*[@name="ppw-widgetEvent:AddCreditCardEvent"]

Select-Payment-Method-euro
    Sleep    8s
    #Page Should Contain Radio Button    xpath://input[@name="ppw-instrumentRowSelection"]//following::input[1]
    #Click Element    xpath://input[@name="ppw-instrumentRowSelection"]//following::input[1]
    #Click Element    xpath://span[contains(@class,"a-radio-label")]//parent::label/input[@value="EUR"]
    #Select Radio Button    ppw-0h_PU_CUS_ff1e6b97-959c-4c85-baf5-a287e3f66221_currencySelection_radioButton    EUR
    Page Should Contain Element    xpath://form//input[@name="ppw-instrumentRowSelection"]//following::input[1]

validation
    Sleep    5s
    #Page Should Contain Element    xpath://span[contains(@class,"a-button-text")][1]
    Click Element    xpath://span[contains(@id,"pp-Al59Nw")]//following::input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")][2]

PayementMethod
    Sleep    8s
    #Page Should Contain Element    xpath://input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")]//following::input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")][2]
    Click Element    xpath://input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")and @type="submit"]//following::input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")and @type="submit"]
    #Page Should Contain Element    xpath://input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")and @type="submit"]//following::input[12]
    #Click Element    xpath://input[contains(@name,"ppw-widgetEvent:SetPaymentPlanSelectContinueEvent")and @type="submit"]//following::input[12]
    #Wait Until Element Is Visible    xpath:(//span[contains(@class,'a-button a-button-span12 a-button-primary pmts-button-input')])[1]    timeout=40s
    #Click Element    xpath:(//span[contains(@class,'a-button a-button-span12 a-button-primary pmts-button-input')])[1]
