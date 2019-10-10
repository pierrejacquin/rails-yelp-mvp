# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '+44 92145 8786',
    category:      'japanese',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '+44 92145 8786',
    category:      'italian',
  },
    {
    name:         'La Tour d Argent',
    address:      'Paris',
    phone_number:  '+33 65432 9988',
    category:      'french',
  },
    {
    name:         'China Tub',
    address:      'SAO PAULO',
    phone_number:  '+55 92145 8786',
    category:      'chinese',
  },
    {
    name:         'Delicieux',
    address:      'La rue de la soif',
    phone_number:  '+33 92145 8786',
    category:      'french',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
