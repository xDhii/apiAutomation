Before '@lojinha' do
  @usuarionome = "#{Faker::Name.first_name}valumin"
  @usuariologin = "#{Faker::Name.last_name}valumin"
  @usuariosenha = Faker::Internet.password
  @createUser = {
    "usuarionome": @usuarionome,
    "usuariologin": @usuariologin,
    "usuariosenha": @usuariosenha
  }

  @loginUser = {
    "usuariologin": @usuariologin,
    "usuariosenha": @usuariosenha
  }

  @lojinha = Lojinha.new(@createUser, @loginUser)
end
