class RemoveFieldNameFromInternships < ActiveRecord::Migration[5.0]
  def change
    remove_column :internships, :latitude, :float
    remove_column :internships, :longitude, :float
  end
end
