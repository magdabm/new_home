class Question < ApplicationRecord

  belongs_to :offer
  belongs_to :user

  validates :content, presence: true
  validates :nick, presence: true

end
