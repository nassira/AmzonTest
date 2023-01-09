*** Keywords ***
Click-Sur-Lien-DelaPremier-imageRecherché
    [Documentation]    l'utilisateur Vérifiez que le lien du titre du produit redirige vers les pages de produit/catégorie correctes
    Page Should Contain    msi gl66 gaming laptop
    Scroll Element Into View    link:MSI GL66 Gaming Laptop: 15.6" 144Hz FHD 1080p Display, Intel Core i7-11800H, NVIDIA GeForce RTX 3070, 16GB, 512GB SSD, Win10, Black (11UGK-001)
    Click Link    link:MSI GL66 Gaming Laptop: 15.6" 144Hz FHD 1080p Display, Intel Core i7-11800H, NVIDIA GeForce RTX 3070, 16GB, 512GB SSD, Win10, Black (11UGK-001)

Click-Sur-image-DelaPremier-imageRecherché
    [Documentation]    l'utilisateur Vérifiez que le clic sur l'image du produit redirige vers les bonnes pages produit/catégorie
    #Page Should Contain Element    xpath://img[@src="https://m.media-amazon.com/images/I/61Ze2wc9nyS._AC_UY218_.jpg"]//parent::div[@class="a-section aok-relative s-image-fixed-height"]
    # si le produit apparaît au début, ne l'utilisez pas Scroll
    Scroll Element Into View    xpath://div[@class="a-section aok-relative s-image-fixed-height"]//descendant::img[@src="https://m.media-amazon.com/images/I/61Ze2wc9nyS._AC_UY218_.jpg"]
    Click Image    xpath://div[@class="a-section aok-relative s-image-fixed-height"]//descendant::img[@src="https://m.media-amazon.com/images/I/61Ze2wc9nyS._AC_UY218_.jpg"]

Click-Sur-autoCorrection
    Sleep    2s
    Click Element    xpath://span[contains(text(),"msi gl66 gamung laptp")]
    Sleep    5s
    Click Link    Link:msi gl66 gaming laptop
    Sleep    5s

Click-Sur-Lien-DelaDeuxiéme-imageRecherché
    [Documentation]    l'utilisateur Vérifiez que le lien du titre du produit redirige vers les pages de produit/catégorie correctes
    Click Link    Link:HP 2021 Stream 14in HD Display, Intel Celeron N4020 Dual-Core Processor, 4GB DDR4 Memory, 128 GB storage (64GB eMMC+64GB TGC Flash Memory), HDMI, WiFi, Webcam, Bluetooth,1-Year Microsoft 365 Win10 S

Click-Sur-image-DelaDeuxiéme-imageRecherché
    [Documentation]    l'utilisateur Vérifiez que le clic sur l'image du produit redirige vers les bonnes pages produit/catégorie
    #Page Should Contain Element    //div[@class="a-section aok-relative s-image-fixed-height"]//descendant::img[@src="https://m.media-amazon.com/images/I/81KbZuKUaVL._AC_UY218_.jpg"]
    #Scroll Element Into View    //div[@class="a-section aok-relative s-image-fixed-height"]//descendant::img[@src="https://m.media-amazon.com/images/I/81KbZuKUaVL._AC_UY218_.jpg"]
    Click Image    //div[@class="a-section aok-relative s-image-fixed-height"]//descendant::img[@src="https://m.media-amazon.com/images/I/81KbZuKUaVL._AC_UY218_.jpg"]

Click-Sur-Lien-amazon.fr-imageRecherché
    [Documentation]    l'utilisateur Vérifiez que le lien du titre du produit redirige vers les pages de produit/catégorie correctes
    Page Should Contain    msi gl66 gaming laptop
    Click Link    //span[text()='MSI GL66 Gaming Laptop: 15.6" 144Hz FHD 1080p Display, Intel Core i7-11800H, NVIDIA GeForce RTX 3070, 16GB, 512GB SSD, Win10, Black (11UGK-001)']

Click-Sur-image-amazon.fr-imageRecherché
    [Documentation]    l'utilisateur Vérifiez que le clic sur l'image du produit redirige vers les bonnes pages produit/catégorie
    Page Should Contain Element    xpath://img[@src="https://m.media-amazon.com/images/I/81lf2FS9H9L._AC_UL320_.jpg"]
    #Scroll Element Into View    xpath://img[@src="https://m.media-amazon.com/images/I/81lf2FS9H9L._AC_UL320_.jpg"]
    Click Image    xpath://img[@src="https://m.media-amazon.com/images/I/81lf2FS9H9L._AC_UL320_.jpg"]
