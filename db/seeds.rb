require 'faker'


puts "🌱 Seeding spices..."

20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    location: Faker::Address.city,
    image: Faker::LoremFlickr.image(size: "300x200", search_terms: ["restaurant", Faker::Restaurant.type])
  )
end

20.times do
  Dish.create(
    name: Faker::Food.dish,
    image: Faker::LoremFlickr.image(size: "300x200", search_terms: ["food", Faker::Food.ingredient]),
    price: Faker::Commerce.price,
    description: Faker::Lorem.sentence
  )
end

puts "✅ Done seeding!"