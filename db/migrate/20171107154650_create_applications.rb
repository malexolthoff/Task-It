class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true
      t.references :internship, foreign_key: true
      t.text :message
      t.string :resume

      t.timestamps
    end
  end
end
