*** Variables ***
@{Lens-Position}    15    152
${QTE}            2

*** Keywords ***
zoomLens-L'image-de-Produit
    Sleep    1s
    Drag And Drop By Offset    xpath://*[@id="magnifierLens"]    ${Lens-Position}[0]    ${Lens-Position}[1]
    Mouse Over    xpath://*[@id="nav-logo-sprites"]

le-Choix-de-quantité
    Select From List By Label    xpath://*[@name="quantity"]    ${QTE}
    Click Element    xpath://*[@id="add-to-cart-button"]

verify
    #Page Should Contain Element    xpath://*[@id="hlb-view-cart-announce"]
    Click Element    xpath://*[@id="nav-cart-text-container"]
    #xpath://*[@id="hlb-view-cart-announce"]

ProceedToCheckout
    Sleep    8s
    Click Element    xpath://*[@name="proceedToRetailCheckout"]

DeleteItems
    Click Element    xpath://input[contains(@name,"submit.delete")]
