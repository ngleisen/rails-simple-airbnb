# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

flat_a = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area,
   large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}
flat_b = {
  name: 'Luxurious flat in Paris',
  address: '10 rue de la Tour Eiffel, 75001 Paris',
  description: 'A splendid appartment in the heart of Paris. Keep an eye on the Eiffel Tower directly from your
  balcolny.',
  price_per_night: 3000,
  number_of_guests: 10
}
flat_c = {
  name: 'Cross the Street to visit the Castle of Versailles',
  address: '10 rue de la Grande Armée, 78000 Versailles',
  description: 'Enjoy your stay in Versailles right next to the amazing Castle. Rest well and take your time in the morning
  as you only need to cross the street to start your visit!',
  price_per_night: 200,
  number_of_guests: 4
}
flat_d = {
  name: 'Student flat, perfect to study in LaRochelle',
  address: '20 rue de la gare, 60000 LaRochelle',
  description: 'Keep focusing on your studies and spend your time on your classes only with this flat! The train station
   is 5 minutes walking, perfect for a university student.',
  price_per_night: 120,
  number_of_guests: 2
}
flat_e = {
  name: 'Live like a Roman',
  address: 'Via Cesare Battisti, 133, 00187 Roma RM',
  description: 'Live in the center of Roma for your stay. Feel the roman life for a while: enjoy the commodities around
  , a lot of good restaurants and coffees around. Walk directly to visit the city from here.',
  price_per_night: 300,
  number_of_guests: 4
}

[flat_a, flat_b, flat_c, flat_d, flat_e].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
