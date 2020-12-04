class Lojinha
  include HTTParty
  require_relative '../hooks/lojinha_hook'
  base_uri 'http://165.227.93.41/lojinha/'

  def initialize(body)
    @createUser = {body: body}
  end

  def criar_usuario
    self.class.post('/usuario', @createUser)
  end

  
end
