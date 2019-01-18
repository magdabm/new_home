class Question < ApplicationRecord

  belongs_to :offer
  belongs_to :user

  validates :content, presence: true, length: { maximum: 1000 }
  validates :nick, presence: true

end
