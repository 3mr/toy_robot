class Message < ApplicationRecord
  # accossaitions
  belongs_to :room, inverse_of: :messages
  belongs_to :user

  # validations
  validates :message, presence: true

  # methods
  def as_json(options)
    super(options).merge(user_avatar_url: user.gravatar_url)
  end
end
