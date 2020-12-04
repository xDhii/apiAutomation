Dado("o endereço da API da lojinha") do
  # Já instanciado pela classe Lojinha
end

Quando("eu realizar uma requisição para criar um Usuário") do
  $response = @lojinha.criar_usuario
end

Então("a API deverá retornar os dados do cadastro respondendo o código {int}") do |response_code|
  expect($response.code).to eq response_code
  expect($response.message).to eq("Created")

  puts "User ID     : #{$response['data']['usuarioid']}"
  puts "User Login  : #{$response['data']['usuariologin']}"
  puts "User Name   : #{$response['data']['usuarionome']}"
  puts "Message     : #{$response['message']}"
end

Quando("eu realizar uma requisição para logar com o usuário criado") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("a API deverá retornar os dados de token e responder o código {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end
