class RemovePhotoFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :photo
  end
end
