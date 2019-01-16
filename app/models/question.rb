class Question < ApplicationRecord

  belongs_to :offer

  validates :content, presence: true
  validates :nick, presence: true

end
