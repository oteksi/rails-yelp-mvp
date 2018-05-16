# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Le goyavier',
    address:      '7 rue de La Reunion, Paris 11, 75011',
    phone_number: '0692569982',
    category:     'french'
  },
  {
    name:         'La pichouline',
    address:      '14 rue des rosier, Sanary sur Mer, 83082',
    phone_number: '0145869985',
    category:     'italian'
  },
  {
    name:         'Le Mandarin',
    address:      '7 rue de La Reunion, Paris 11, 75011',
    phone_number: '0692569982',
    category:     'chinese'
  },
  {
    name:         'A la frite belge une fois',
    address:      '2 place de la frite, brussel',
    phone_number: '0689550023',
    category:     'belgian'
  },
  {
    name:         'OKI Sushi',
    address:      '22 bvd general leclerc, Antony',
    phone_number: '0146002036',
    category:     'japanese'
  }
]


# puts 'Creating reviews...'
# reviews_attributes = [
#   {
#     content:        'Cest top !',
#     rating:         4,
#     restaurant_id:  2
#   },
#   {
#     content:        'Delicieux',
#     rating:         5,
#     restaurant_id:  2
#   },
#   {
#     content:        'Pas mal du tout...',
#     rating:         3,
#     restaurant_id:  1
#   }
# ]
Restaurant.create!(restaurants_attributes)
# Review.create!(reviews_attributes)

puts 'Finished!'
