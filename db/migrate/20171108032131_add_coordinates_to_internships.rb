class AddCoordinatesToInternships < ActiveRecord::Migration[5.0]
  def change
    add_column :internships, :latitude, :float
    add_column :internships, :longitude, :float
  end
end
