class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :area, null: false
      t.string :address, null: false
      t.integer :price, null: false
      t.integer :phone, null: false

      t.timestamps
    end
  end
end
