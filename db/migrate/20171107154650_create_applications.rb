class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.reference :user
      t.reference :internship
      t.text :message
      t.string :resume

      t.timestamps
    end
  end
end
