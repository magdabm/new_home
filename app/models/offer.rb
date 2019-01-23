class Offer < ApplicationRecord

  belongs_to :user
  has_many :offers_rooms
  has_many :rooms, through: :offers_rooms
  has_many :questions, dependent: :destroy
  belongs_to :district, optional: true

  mount_uploaders :photos, PhotoUploader

  enum status: [ :for_rent, :for_sale ]

  validates :title, presence: true
  validates :description, presence: true, length: { in: 60..10000 }
  validates :area, presence: true, :numericality => { greater_than: 0 }
  validates :price, presence: true, :numericality => { greater_than: 0 }
  validates :phone, presence: true, length: { is: 9 }
  validate :has_rooms?
  validates :district, presence: true

  scope :best_factor, -> { order(factor: :DESC).limit(10) }


  def price_to_area_factor
    return factor = (price/area.to_f).round(2)
  end

  def has_rooms?
    if rooms.size <= 2
      errors.add(:rooms, "- you need to mark 3 rooms at least.")
    end
  end

  def css_class
    if status == "for_rent"
      'rent'
    else
      'sale'
    end
  end

end
