class AddFactorToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :factor, :integer, null: false, default: 0
  end
end
