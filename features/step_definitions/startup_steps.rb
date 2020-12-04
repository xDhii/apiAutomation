Dado('o endereço da API para manter o cadastro de Startup') do
  # Já instanciado pela classe Startup
end

Quando('realizar uma requisição para cadastrar uma startup') do
  $response = @startup.postStartup
end

Então('a API irá retornar os dados do cadastro da Startup respondendo o código {int}') do |int|
  # Validar status code e message
  expect($response.code).to eq int
  puts "Responde code: #{$response.code}"
  expect($response.message).to eq("Created")
  puts "Response Message: #{$response.message}"

  # Imprime os atributos retornados na requisição
  puts "ID      : #{$response['id']}"
  puts "Data    : #{$response['data']}"
  puts "Nome    : #{$response['nome']}"
  puts "Conta   : #{$response['conta']}"
  puts "Cidade  : #{$response['cidade']}"

  $id = $response["id"]
end

Quando('realizar uma requisição passando o ID da startup') do
  $get = @startup.getStartup($id)
end

Então('a API irá retornar os dados da Startup correspondente respondendo o código {int}') do |int|
  expect($get.code).to eq int
  expect($get.message).to eq('OK')
  expect($get["id"]).to eq($response['id'])

  puts "ID      : #{$response['id']}"
  puts "Data    : #{$response['data']}"
  puts "Nome    : #{$response['nome']}"
  puts "Conta   : #{$response['conta']}"
  puts "Cidade  : #{$response['cidade']}"
  puts "Status Code: #{$get.code}"

end

Quando('realizar uma requisição para alterar uma startup') do
  $put = @startup.putStartup($id)
end

Então('a API irá retornar os dados da Startup alterados respondendo o código {int}') do |int|
  expect($put.code).to eq int
  expect($put.message).to eq('OK')
  expect($put['id']).to eq($response['id'])

  puts "ID      : #{$response['id']}"
  puts "Data    : #{$response['data']}"
  puts "Nome    : #{$response['nome']}"
  puts "Conta   : #{$response['conta']}"
  puts "Cidade  : #{$response['cidade']}"
  puts "Status Code: #{$put.code}"
end

Quando('realizar uma requisição para excluir uma startup') do
  $delete = @startup.deleteStartup($id)
end

Então('a API deverá retornar os dados da exclusão respondendo o código {int}') do |int|
  expect($delete.code).to eq int
  expect($delete.message).to eq('OK')

  puts "ID      : #{$response['id']}"
  puts "Data    : #{$response['data']}"
  puts "Nome    : #{$response['nome']}"
  puts "Conta   : #{$response['conta']}"
  puts "Cidade  : #{$response['cidade']}"
  puts "Status Code: #{$delete.code}"
end

Quando('realizar uma requisição para excluir todas as startups') do
  $clean = @cleaner.clean_startup
end

Então('a API deverá retornar o código {int}') do |int|
  $status = @cleaner.get_api
  expect($status.code).to eq int
end
