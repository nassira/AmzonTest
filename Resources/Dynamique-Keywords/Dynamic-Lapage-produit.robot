*** Keywords ***
Aperçu-de-L'image-de-gauche-du-Produit
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/51PGd7HQVtS._AC_US40_.jpg"]
    Sleep    1
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/51zhzmVhhjS._AC_US40_.jpg"]
    Sleep    1
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/51+f9lnOq1L._AC_US40_.jpg"]
    Sleep    1
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/51iF+wTmCfS._AC_US40_.jpg"]
    Sleep    1
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/51YcLVM9C+S._AC_US40_.jpg"]
    Sleep    1
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/415wCnkf-gS._AC_US40_.jpg"]
    Sleep    1
    Wait Until Element Is Visible    xpath://img[@src="https://m.media-amazon.com/images/I/415wCnkf-gS._AC_US40_.jpg"]
    Mouse Over    xpath://img[@src="https://m.media-amazon.com/images/I/51UPXV7L3US._AC_SX425_.jpg"]

Ajouté-à-laCarte
    Sleep    8s
    #Wait Until Element Is Visible    xpath://*[@id="attach-sidesheet-view-cart-button"]//input
    Click Button    xpath://*[@id="attach-sidesheet-view-cart-button"]//input
