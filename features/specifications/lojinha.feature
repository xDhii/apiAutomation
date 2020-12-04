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

  Cenário: Login de Usuário
    Dado o endereço da API da lojinha
    Quando eu realizar uma requisição para logar com o usuário criado
    Então a API deverá retornar os dados de token e responder o código 200

  Cenário: Cadastro de Produto
    Dado o endereço da API da lojinha
    Quando eu realizar uma requisição para cadastrar um produto
    Então a API deverá retornar os dados do produto e responder o código 201

    Cenário: Busca de Produto
    Dado o endereço da API da lojinha
    Quando eu realizar uma requisição para buscar o produto 9767
    Então a API deverá retornar os dados do produto e responder o código 200
