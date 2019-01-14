class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.string :area
      t.string :address
      t.integer :price
      t.integer :phone

      t.timestamps
    end
  end
end
