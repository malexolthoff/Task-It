class Application < ApplicationRecord
  belongs_to :internship
  belongs_to :user
  has_one :company, through: :internship
end
