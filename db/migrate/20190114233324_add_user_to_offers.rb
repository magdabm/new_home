class AddUserToOffers < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :user
    add_foreign_key :offers, :users
  end
end
