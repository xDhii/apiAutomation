class Lojinha
  include HTTParty
  require_relative '../hooks/lojinha_hook'
  base_uri 'http://165.227.93.41/lojinha/'

  def initialize(createUser, userLogin)
    @createUser = {body: createUser}
    @userLogin = {body: userLogin}
  end

  def criar_usuario
    self.class.post('/usuario', @createUser)
  end

  def logar_usuario
    self.class.post('/login', @userLogin)
  end

end
