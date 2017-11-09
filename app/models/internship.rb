class Internship < ApplicationRecord
  belongs_to :company
  has_many :internships
end
