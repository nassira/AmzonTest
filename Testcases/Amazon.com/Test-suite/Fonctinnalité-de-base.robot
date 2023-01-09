*** Settings ***
Test Setup        CommonFunctionality.Amazon
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../../../Resources/Keywords/RechercheResultat.robot
Resource          ../../../Resources/Keywords/CommonFunctionality.robot
Resource          ../../../Resources/Keywords/AmazonRecherche.robot
Resource          ../../../Resources/Keywords/ProduitPage.robot
Resource          ../../../Resources/Keywords/Login.robot
Resource          ../../../Resources/Keywords/shippingAddress.robot
Resource          ../../../Resources/Keywords/article.robot
Resource          ../../../Resources/Keywords/PaymentMethod.robot
Resource          ../../../Resources/Dynamique-Keywords/Dynamic-Resultatsection.robot
Resource          ../../../Resources/Static-Keywords/Static-amazonRecherche.robot
Resource          ../../../Resources/Dynamique-Keywords/Dynamic-Lapage-produit.robot
Resource          ../../../Resources/Static-Keywords/Static-Lapage-produit.robot
Resource          ../../../Resources/Static-Keywords/Login.robot
Resource          ../../../Resources/Static-Keywords/shippingAddress.robot
Resource          ../../../Resources/Static-Keywords/Static-amazonRecherche.robot
Resource          ../../../Resources/Static-Keywords/Static-Login.robot
Resource          ../../../Resources/Static-Keywords/Static-PaymentMethod.robot
Resource          ../../../Resources/Static-Keywords/Static-shippingAddress.robot
Resource          ../../../Resources/Static-Keywords/Static-PlaceOrder.robot
Resource          ../../../Resources/Static-Keywords/CommonFunctionality.robot

*** Test Cases ***
vérifie la Fonctionalité
    #Login.field blank
    Static-amazonRecherche.Saisie-de-text-a-Barre-de-recherche    msi gl66 gaming laptop
    Static-amazonRecherche.Click-sur-button-de-barre-recherche
    Dynamic-Resultatsection.Click-Sur-image-DelaPremier-imageRecherché
    Go Back
    Dynamic-Resultatsection.Click-Sur-Lien-DelaPremier-imageRecherché
    Dynamic-Lapage-produit.Aperçu-de-L'image-de-gauche-du-Produit
    Static-Lapage-produit.zoomLens-L'image-de-Produit
    Static-Lapage-produit.le-Choix-de-quantité
    #ce partie la changer par rapport les produits va trouvé le correct keyword choix Ajouté à laCarte à(Static-Lapage-produit -> verify)
    Dynamic-Lapage-produit.Ajouté-à-laCarte
    Static-Lapage-produit.ProceedToCheckout
    Static-Login.SignIn    sirafamilly@gmail.com    123456
    Static-shippingAddress.Address
    ##Static-PaymentMethod.Creditards
    #Static-PaymentMethod.Select-Payment-Method-euro
    Static-PaymentMethod.PayementMethod
    #Static-shippingAddress.Deliver_to_this_Address
    #Static-PlaceOrder.PlaceOrder
