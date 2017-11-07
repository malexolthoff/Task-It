class CreateInternships < ActiveRecord::Migration[5.0]
  def change
    create_table :internships do |t|
      t.string :name
      t.text :responsibilities
      t.text :qualifications
      t.integer :length
      t.integer :hours
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
