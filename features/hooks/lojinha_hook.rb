Before '@lojinha' do
  @usuarionome = "#{Faker::Name.first_name}valumin#{Faker::Name.middle_name}"
  @usuariologin = "#{Faker::Name.last_name}valumin#{Faker::Name.middle_name}"
  @usuariosenha = Faker::Internet.password
  @createUser = {
    "usuarionome": @usuarionome.downcase,
    "usuariologin": @usuariologin.downcase,
    "usuariosenha": @usuariosenha.downcase
  }

  @loginUser = {
    "usuariologin": "adriano",
    "usuariosenha": "adriano"
  }

  @lojinha = Lojinha.new(@createUser, @loginUser)
end
