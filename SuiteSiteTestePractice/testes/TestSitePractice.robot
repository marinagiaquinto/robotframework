***Settings***
### Referenciar:
###Library utilizada para a escrita dos casos de tests, não da sua implementação.
###Arquivo Resource para que possa achá-lo e rodar o teste
### Setup (roda as keywords antes da suite ou caso de teste - "pré-equisitos"), se tiver
### ex: Suit Setup (caso queira que rode ante da suit inteira), Test Setup (quando deseja rodar antes de cada caso de teste)
###Teardown(roda as keywords depois da suite ou caso de teste "pós- requisitos"), se tiver

Resource        ../resource/Resource.robot
test Setup      Abir navegador
test Teardown   Fechar navegador

***Variables***
###Referenciar as variáveis globais usadas para os casos de teste
###Elas podem ser acessadas de qualquer ponto do teste
###Se não possuir nenhuma, pode omitir a seção

***Test Case***
Caso de teste 01: Pesquisar Produtos Existentes
  Acessar página home do site
  Digitar o nome de produto "Blouse" no campo de pesquisa.
  Clicar no botão de pesquisa.
  Conferir se o produto "Blouse" foi listado no site

#Caso de teste 02: Pesquisar Produtos não Existentes
#  Acessar página home do site.
#  Digitar o nome de produto "produtoNãoExistente" no campo de pesquisa.
#  Clicar no botão de pesquisa.
#  Conferir mensagem de erro "No results werw found for your search "produtoNãoExistente""

***KeyWords***
