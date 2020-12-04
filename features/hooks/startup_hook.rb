Before '@startup' do
  @nome = Faker::Company.name
  @cidade = Faker::Address.city
  @body = {
    "nome": @nome + " Valumin",
    "cidade": @cidade
  }

  @startup = Startup.new(@body)
end

Before '@cleanStartup' do
  @cleaner = Cleaner.new
end
