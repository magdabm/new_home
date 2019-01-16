class Room < ApplicationRecord

  has_many :offers_rooms
  has_many :offers, through: :offers_rooms

  validates :content, presence: true, length: { maximum: 500 }
  validates :nick, presence: true

end
