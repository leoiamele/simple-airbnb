require 'faker'

Flat.delete_all

10.times do
  flat = Flat.create!(
    name: "#{Faker::Address.community}",
    address: "#{Faker::Address.street_address}",
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: [50, 75, 100, 150, 200, 230].sample,
    number_of_guests: rand(1..6)
  )
  puts "\n\n Creating flat id number #{flat.id} \n\n"

end