*** Variables ***

${Invalid_Email}    amazontestr@gmail.com

*** Keywords ***
SignIn
	[Arguments]	${Email}	${Password}
    Input Text    xpath://*[@id="ap_email"]	${Email}  
    Click Button    xpath://*[@id="continue"]
    sleep    1
    Input Text    xpath://*[@id="ap_password"]    ${Password}
    Click Button    xpath://*[@id="signInSubmit"]

invalid username
    Input Text    xpath://*[@id="ap_email"]    ${Auto-Invalid_Email}
    Click Button    xpath://*[@id="continue"]
    sleep    1
    Input Text    xpath://*[@id="ap_password"]    ${Password}
    Click Button    xpath://*[@id="signInSubmit"]

field blank
    Click Element    xpath://*[@id="ap_email"]
    Click Button    xpath://*[@id="continue"]
    sleep    1
    Click Element    xpath://*[@id="ap_password"]
    Click Button    xpath://*[@id="signInSubmit"]
