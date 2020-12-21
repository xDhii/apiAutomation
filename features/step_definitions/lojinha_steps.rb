Dado('o endereço da API da lojinha') do
  # Já instanciado pela classe Lojinha
end

Quando('eu realizar uma requisição para criar um Usuário') do
  $response = @lojinha.criar_usuario
end

Então('a API deverá retornar os dados do cadastro respondendo o código {int}') do |response_code|
  expect($response.code).to eq response_code
  expect($response.message).to eq("Created")

  log("User ID     : #{$response['data']['usuarioid']}")
  log("User Login  : #{$response['data']['usuariologin']}")
  log("User Name   : #{$response['data']['usuarionome']}")
  log("Message     : #{$response['message']}")
end

Quando('eu realizar uma requisição para logar com o usuário criado') do
  $login = @lojinha.logar_usuario
end

Então('a API deverá retornar os dados de token e responder o código {int}') do |int|
  expect($login.code).to eq int
  expect($login.message).to eq('OK')
  $token = $login['data']['token']
  log("Token       : #{$token}")
end

Quando("eu realizar uma requisição para cadastrar um produto") do
  $produto = @lojinha.cadastrar_produto
end

Então('a API deverá retornar os dados do produto e responder o código {int}') do |int|
  log($produto)
  log("Status: #{$produto.code}")
  expect($produto.code).to eq int
end

Quando('eu realizar uma requisição para buscar o produto {int}') do |int|
  $busca = @lojinha.busca_produto(int)
end

Então('a API deverá retornar os dados do produto buscado e responder o código {int}') do |int|
  expect($busca.code).to eq int
  log("ID      : #{$busca['data']['produtoid']}")
  log("Nome    : #{$busca['data']['produtonome']}")
  log("Valor   : #{$busca['data']['produtovalor']}")
  log("Cores   : #{$busca['data']['produtocores']}")
  log("Mensagem: #{$busca['message']}")
end
