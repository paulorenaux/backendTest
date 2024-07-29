# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pr = State.create({ name: 'Paraná', id: 1 })
sc = State.create({ name: 'Santa Catarina', id: 2 })
rs = State.create({ name: 'Rio Grande do Sul', id: 3 })

['Curitiba',
   'Londrina',
   'Maringá ',
   'Ponta Grossa',
   'Cascavel',
   'São José dos Pinhais',
   'Foz do Iguaçu',
   'Colombo',
   'Guarapuava',
   'Araucária'].each do |city|
  City.create({ name: city, state: pr })
end

[
  'Joinville',
  'Florianópolis',
  'Blumenau',
  'São José',
  'Itajaí',
  'Chapecó',
  'Palhoça',
  'Criciúma',
  'Jaraguá do Sul',
  'Lages',
].each do |city|
  City.create({ name: city, state: sc })
end

[
  'Porto Alegre',
  'Caxias do Sul',
  'Canoas',
  'Pelotas',
  'Santa Maria',
  'Gravataí',
  'Novo Hamburgo',
  'Viamão',
  'São Leopoldo',
  'Passo Fundo'
].each do |city|
  City.create({ name: city, state: rs })
end
