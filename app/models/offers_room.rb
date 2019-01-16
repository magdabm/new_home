class OffersRoom < ActiveRecord::Base

   belongs_to :offer
   belongs_to :room

end
