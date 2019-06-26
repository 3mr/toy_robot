class Room < ApplicationRecord
  # accossaitions
  has_many :messages, dependent: :destroy, inverse_of: :room

  # validations
  validates :name, presence: true
end
