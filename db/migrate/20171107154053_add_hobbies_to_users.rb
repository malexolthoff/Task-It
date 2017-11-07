class AddHobbiesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :hobbies, :text
  end
end
