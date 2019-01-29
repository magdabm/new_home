class RemoveAddressFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :address
  end
end
