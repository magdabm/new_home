class RemoveAreaFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :area
  end
end
