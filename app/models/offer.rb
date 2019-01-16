class Offer < ApplicationRecord

  belongs_to :user

  has_many :offers_rooms
  has_many :rooms, through: :offers_rooms

  validates :title, presence: true
  validates :description, presence: true, length: { in: 60..10000 }
  validates :area, presence: true, :numericality => { greater_than: 0 }
  validates :address, presence: true
  validates :price, presence: true, :numericality => { greater_than: 0 }
  validates :phone, presence: true, length: { is: 9 }

  enum status: [ :for_rent, :for_sale ]


end
