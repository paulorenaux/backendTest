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

City.create([
              { name: 'Curitiba', state: pr },
              { name: 'Lonrdina', state: pr },
              { name: 'Maringá', state: pr },
              { name: 'Florianópolis', state: sc },
              { name: 'Blumenau', state: sc },
              { name: 'Joinville', state: sc },
              { name: 'Porto Alegre', state: rs },
              { name: 'Pelotas', state: sc }
            ])
