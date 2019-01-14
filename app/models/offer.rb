class Offer < ApplicationRecord

  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true, length: { in: 60..10000 }
  validates :area, presence: true, :numericality => { greater_than: 0 }
  validates :address, presence: true
  validates :price, presence: true, :numericality => { greater_than: 0 }
  validates :phone, presence: true, length: { is: 9 }

end
