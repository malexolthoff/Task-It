class Application < ApplicationRecord
  belongs_to :internship
  belongs_to :user
  belongs_to :company
end
