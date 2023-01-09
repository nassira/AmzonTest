*** Settings ***
Test Setup        CommonFunctionality.AmazonFr
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

*** Test Cases ***
Envoyer-le-produit-a-multi-adress
    CommonFunctionality.AmazonFr
    AmazonRecherche.FrSearchProduct
    RechercheResultat.FrVerifyLinkByImage
    #ProduitPage.amazonfrimage
    ProduitPage.clickk
    ProduitPage.ProceedToCheckout
    Login.SignIn
    #shippingAddress.Address
    shippingAddress.plusieursAdresses
    article.AdresseLivraison
    PaymentMethod.PayementMethod
    article.billingAddress
