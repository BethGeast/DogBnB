class Item < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :users, through: :bookings
  has_many_attached :photos

  include PgSearch::Model

  pg_search_scope :search_by_location_and_date_and_guests, against: [:location], using: { tsearch: { prefix: true } }

end
