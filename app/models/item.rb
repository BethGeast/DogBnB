class Item < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :users, through: :bookings
  has_many_attached :photos
end
