# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "04.23.23.12.12", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "04.23.23.10.10",category: "french"}
maria = {name: "Maria", address: "1 rue des pierres plantées", phone_number: "04.23.23.13.13", category: "italian"}
ledesjeuneur =  {name: "Le desjeuneur", address: "3 rue des pierres plantées",phone_number: "04.23.23.11.11", category: "french"}
soma =  {name: "Soma", address: "rue des fantasques, 69001 LYON", phone_number: "04.23.23.18.18",category: "japanese"}

[dishoom, pizza_east, maria, ledesjeuneur, soma].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
