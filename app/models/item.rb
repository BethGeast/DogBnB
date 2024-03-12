class Item < ApplicationRecord
  has_many :reviews, :bookings
  has_many :users, through: :bookings
end
