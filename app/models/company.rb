class Company < ApplicationRecord
  has_many :internships, dependent: :destroy
end
