class AddUserToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :user
    add_foreign_key :questions, :users
  end
end
