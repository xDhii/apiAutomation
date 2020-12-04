Dado('o endereço da API da lojinha') do
  # Já instanciado pela classe Lojinha
end

Quando('eu realizar uma requisição para criar um Usuário') do
  $response = @lojinha.criar_usuario
end

Então('a API deverá retornar os dados do cadastro respondendo o código {int}') do |response_code|
  expect($response.code).to eq response_code
  expect($response.message).to eq("Created")

  puts "User ID     : #{$response['data']['usuarioid']}"
  puts "User Login  : #{$response['data']['usuariologin']}"
  puts "User Name   : #{$response['data']['usuarionome']}"
  puts "Message     : #{$response['message']}"
end

Quando('eu realizar uma requisição para logar com o usuário criado') do
  $login = @lojinha.logar_usuario
end

Então('a API deverá retornar os dados de token e responder o código {int}') do |int|
  expect($login.code).to eq int
  expect($login.message).to eq('OK')
  $token = $login['data']['token']
  puts "Token       : #{$token}"
end

Quando("eu realizar uma requisição para cadastrar um produto") do
  $produto = @lojinha.cadastrar_produto
end

Então('a API deverá retornar os dados do produto e responder o código {int}') do |int|
  puts $produto
  puts "Status: #{$produto.code}"
  expect($produto.code).to eq int
  puts x['data']['produtoid']
end
