class AddViewsCountToOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :views_count, :integer, default: 0
  end
end
