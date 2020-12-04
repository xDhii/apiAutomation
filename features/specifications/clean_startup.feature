#language: pt
Funcionalidade: Manter dados de Startup através de API
  Como um usuário do sistema
  Eu quero poder realizar requisições na API
  De modo que a mesma não esteja sobrecarregada

  @cleanStartup
  Cenário: Deletar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para excluir todas as startups
    Então a API deverá retornar o código 200
