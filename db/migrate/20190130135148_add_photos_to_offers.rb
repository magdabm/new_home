class AddPhotosToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :photos, :JSON
  end
end
