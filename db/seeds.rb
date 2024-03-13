require 'faker'
25.times do
  Item.create(
    name: Faker::Creature::Dog.meme_phrase,
    description: Faker::TvShows::MichaelScott.quote,
    price: Faker::Number.decimal_part(digits: 2),
    date_available: Faker::Date.between(from: '2024-04-01', to: '2024-12-31'),
    location: Faker::Address.city
  )
end
