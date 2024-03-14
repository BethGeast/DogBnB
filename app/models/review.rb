class Review < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :item, dependent: :destroy
  has_many   :pictures
end
