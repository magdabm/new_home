class Offer < ApplicationRecord

  belongs_to :user
  has_many :offers_rooms
  has_many :rooms, through: :offers_rooms
  has_many :questions, dependent: :destroy
  belongs_to :district, optional: true

  enum status: [ :for_rent, :for_sale ]

  validates :title, presence: true
  validates :description, presence: true, length: { in: 60..10000 }
  validates :area, presence: true, :numericality => { greater_than: 0 }
  validates :price, presence: true, :numericality => { greater_than: 0 }
  validates :phone, presence: true, length: { is: 9 }
  validate :has_rooms?
  validates :district, presence: true

  def has_rooms?
    if rooms.size <= 2
      errors.add(:rooms, "- you need to mark 3 rooms at least.")
    end
  end

  def has_district?
    if district
      errors.add(:rooms, "- you need to mark 3 rooms at least.")
    end
  end
end
