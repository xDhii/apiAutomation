Dado('que eu faça um POST no endpoint clientes') do
  @body = {
    "postId": 666,
    "id": 666,
    "name": Faker::Movies::StarWars.droid,
    "email": Faker::Internet.email,
    "body": Faker::ChuckNorris.fact
  }.to_json
  @post_clients = HTTParty.post 'https://jsonplaceholder.typicode.com/comments',
    body: @body,
    headers: {'Content-Type': 'application/json'}
end

Então('um novo cliente será cadastrado') do
  log(@post_clients.body)
  log(@post_clients.message)
  expect(@post_clients.code).to eq 201
end
