class RemovePhotosFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :photos
  end
end
