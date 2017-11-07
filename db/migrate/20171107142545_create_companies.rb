class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :photo
      t.string :address
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
