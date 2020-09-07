require 'faker'

Flat.delete_all

10.times do
  flat = Flat.create!(
    name: "#{Faker::Address.community}, #{Faker::Address.state}",
    address: "#{Faker::Address.street_address}",
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: [50, 75, 100, 150, 200, 250, 300].sample,
    number_of_guests: rand(1..6),
    picture_url: ["https://live.staticflickr.com/8083/29003457793_c0b846aae8_b.jpg", "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-1.2.1&auto=format&fit=crop&w=2534&q=80", "https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixlib=rb-1.2.1&auto=format&fit=crop&w=2643&q=80", "https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80", "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"].sample,
  )
  puts "\n\n Creating flat id number #{flat.id} \n\n"

end