# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Beautiful view of the Thames',
  address: 'Riverside, West Ferry Circus Canary Wharf, Canary, London E14 8RR',
  description: "You're so close to the river you can almost smell it. The balcony will let you enjoy the rare rays of sunshine",
  price_per_night: 175,
  number_of_guests: 2
)
Flat.create!(
  name: 'The Chaplin Room: Historic Design-led Stay',
  address: '55 Shepperton Rd, London N1 3DH',
  description: "The Tanners Studios is a collection of boutique, design-led, eco-conscious apartments, located just a 10-minutes walk from London Bridge station and London's most iconic landmarks; Tower Bridge, Tower of London and Borough Market.",
  price_per_night: 184,
  number_of_guests: 2
)
Flat.create!(
  name: 'Poppyseed Studio .. Home from home!',
  address: '135 Fortess Rd, London NW5 2HR',
  description: "Poppyseed Studio is a gorgeous, sunny studio room with oak-beamed ceiling, roof windows & private patio, 3 mins Tufnell Park Tube and 24-hr bus to main line stations and West End, near Camden Town’s colourful markets and Hampstead Heath.",
  price_per_night: 110,
  number_of_guests: 4
)
Flat.create!(
  name: 'The Terrace Soho gardens',
  address: '10 Soho St, London W1D 3DL',
  description: "Lovely apartment in the heart of Soho with Oxford Circus and Piccadilly Circus station just a 5 minute. Accessible outdoor rooftop garden. Large bedroom with Double bed and double wardrobe, TV with Netflix,fast wireless internet. Fully fitted kitchen",
  price_per_night: 220,
  number_of_guests: 2
)

puts 'Finished!'
