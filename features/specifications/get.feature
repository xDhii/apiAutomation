#language: pt

@get
Funcionalidade: Aprendendo o verbo GET
    Eu, como interessado em automação
    Desejo aprender como automatizar o verbo GET
    Para ser um QA melhor

    Cenario: Automatizando GET
        Dado que eu faça um GET no endpoint clientes
        Então o retorno dele será todos os clientes cadastrados

    Cenario: Consultar endereço via CEP
        Dado que eu informe o cep "06763040"
        Quando efetuar a requisição na API get
        Então é retornado os dados do endereço pertencente ao CEP "06763-040"
