require 'faker'
Item.destroy_all
25.times do
  Item.create(
    name: Faker::Creature::Dog.meme_phrase,
    description: Faker::TvShows::MichaelScott.quote,
    price: Faker::Number.decimal_part(digits: 2),
    date_available_from: Faker::Date.between(from: '2024-04-01', to: '2024-12-31'),
    date_available_until: Faker::Date.between(from: '2024-04-01', to: '2024-12-31'),
    location: Faker::Address.city,
    max_guests: rand(1..10),
    category: ["Big Dog", "Medium Dog", "Small Dog", "Multiple Dogs", "Woodland",
      "Beachfront", "City", "Home-from-home"].sample
  )
end
