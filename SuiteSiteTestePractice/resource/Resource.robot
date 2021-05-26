***Settings***
Library   SeleniumLibrary

***Variables***
${BROWSER}   firefox
${URL}       http://automationpractice.com

***KeyWords***
###Setup e Teardown
Abir navegador
  Open Browser   http://automationpractice.com   ${BROWSER}

Fechar navegador
  close BROWSER

###Caso de teste 01
Acessar página home do site
  ###Como já abrimos a página no setup, aqui conferirmos se é de fato a página que desejamos aberta.
  ###Poderia também retirar o setup e realizar o passo de abertura do navgador aqui.
  Title Should Be    My Store

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa.
  Input Text     name=search_query   ${PRODUTO}

Clicar no botão de pesquisa.
  Click Button   name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
  Wait Until Element Is Visible   css=.page-heading
  Title Should Be                 Search - My Store
  Page Should Contain Image       xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
  Page Should Contain Link        xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]
