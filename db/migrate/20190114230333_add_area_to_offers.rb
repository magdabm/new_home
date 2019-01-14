class AddAreaToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :area, :integer
  end
end
