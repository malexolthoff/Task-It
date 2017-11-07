class Company < ApplicationRecord
  has_many :internships, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
