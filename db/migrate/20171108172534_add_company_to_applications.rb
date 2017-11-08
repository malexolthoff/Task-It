class AddCompanyToApplications < ActiveRecord::Migration[5.0]
  def change
    add_reference :applications, :company, foreign_key: true
  end
end
