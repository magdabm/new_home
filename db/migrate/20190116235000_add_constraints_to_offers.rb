class AddConstraintsToOffers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :offers, :title, false
    change_column_null :offers, :description, false
    change_column_null :offers, :address, false
    change_column_null :offers, :price, false
    change_column_null :offers, :phone, false
    change_column_null :offers, :area, false
    change_column_null :offers, :status, false
  end
end
