class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content, null: false
      t.string :nick, null: false
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
