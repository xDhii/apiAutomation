Before '@lojinha' do
  @usuarionome = Faker::Name.first_name + Faker::Name.middle_name
  @usuariologin = Faker::Name.last_name + Faker::Name.middle_name
  @usuariosenha = Faker::Internet.password
  @create_user = {
    'usuarionome': @usuarionome.downcase,
    'usuariologin': @usuariologin.downcase,
    'usuariosenha': @usuariosenha.downcase
  }

  @login_user = {
    'usuariologin': 'adriano',
    'usuariosenha': 'adriano'
  }

  @create_product = {
    'produtonome': Faker::Movie.title.to_s,
    'produtovalor': 15,
    'produtocores': [
      Faker::Color.color_name.to_s
    ],
    'componentes': [
      {
        'componentenome': 'poster',
        'componentequantidade': 1
      }
    ]
  }

  @lojinha = Lojinha.new(@create_user, @login_user, @create_product)
end
