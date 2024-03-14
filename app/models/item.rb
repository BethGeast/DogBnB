class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos

  include PgSearch::Model

  pg_search_scope :search_by_location_and_date_and_guests, against: [:location], using: { tsearch: { prefix: true } }

end
