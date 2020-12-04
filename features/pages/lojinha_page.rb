class Lojinha
  include HTTParty
  require_relative '../hooks/lojinha_hook'
  base_uri 'http://165.227.93.41/lojinha/'

  def initialize(create_user, user_login, create_product)
    @create_user = { body: create_user }
    @user_login = { body: user_login }
    @header = {headers: {"token": $token}}
    @create_product = {
      headers: {"token": $token},
      body: create_product}
  end

  def criar_usuario
    self.class.post('/usuario', @create_user)
  end

  def logar_usuario
    self.class.post('/login', @user_login)
  end

  def cadastrar_produto
    self.class.post('/produto', @create_product)
  end

  def busca_produto(id)
    self.class.get("/produto/#{id}", @header)
  end
end
