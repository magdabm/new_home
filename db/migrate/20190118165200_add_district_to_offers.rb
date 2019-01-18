class AddDistrictToOffers < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :district
    add_foreign_key :offers, :districts
  end
end
