

*** Keywords ***
Saisie-de-text-a-Barre-de-recherche
    [Documentation]    l'utilisateur entrera le produit par son nom ou sa catégorie, seules les correspondances directes ou les produits connexes sont affichés.
	[Arguments]	${NomProduit}
    Page Should Contain Element    xpath://*[@id="twotabsearchtextbox"]
    Input Text    xpath://*[@id="twotabsearchtextbox"]    ${NomProduit}
Click-sur-button-de-barre-recherche
    Click Button    xpath://*[@id="nav-search-submit-button"]

 


