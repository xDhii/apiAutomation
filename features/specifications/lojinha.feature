#language:pt
@lojinha
Funcionalidade: Utilizar a lojinha através da API
  Como um funcionário da lojinha
  Eu quero poder cadastrar produtos
  De forma que eles fiquem disponíveis para a busca

  Cenário: Cadastro de Usuário
    Dado o endereço da API da lojinha
    Quando eu realizar uma requisição para criar um Usuário
    Então a API deverá retornar os dados do cadastro respondendo o código 201
