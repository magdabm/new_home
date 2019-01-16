class CreateJoinTableOfferRoom < ActiveRecord::Migration[5.2]
  def change
    create_join_table :offers, :rooms do |t|
      t.index [:offer_id, :room_id]
      t.index [:room_id, :offer_id]
    end
  end
end
