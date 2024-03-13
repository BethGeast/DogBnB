class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item
end

has_many :pictiures, :destroy
