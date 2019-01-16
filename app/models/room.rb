class Room < ApplicationRecord

  has_many :offers_rooms
  has_many :offers, through: :offers_rooms

end
