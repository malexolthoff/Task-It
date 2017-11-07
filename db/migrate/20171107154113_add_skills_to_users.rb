class AddSkillsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skills, :text
  end
end
