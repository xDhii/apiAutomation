Dado("que eu faça um GET no endpoint clientes") do
  @get_clients = HTTParty.get 'https://jsonplaceholder.typicode.com/posts'
end

Então("o retorno dele será todos os clientes cadastrados") do
  puts @get_clients.body
  puts "Quantidade de posts: " + @get_clients.size.to_s
  puts "Mensagem: " + @get_clients.message.to_s
  puts "Código: " + @get_clients.code.to_s
  expect(@get_clients.code).to eq 200
end

Dado("que eu informe o cep {string}") do |cep|
  @cep = cep
end

Quando("efetuar a requisição na API get") do
  @result = HTTParty.get("http://viacep.com.br/ws/#{@cep}/json")
end

Então("é retornado os dados do endereço pertencente ao CEP {string}") do |cep|
  @resCep = cep
  @endereco = @result.parsed_response
  expect(@endereco['cep']).to include(cep)
  puts "Consultando o CEP " + @endereco['cep'].to_s
  puts @result.code
  puts @result.message
  puts @result.headers
  puts @result.body
end
