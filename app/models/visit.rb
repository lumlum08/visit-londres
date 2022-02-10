class Visit < ApplicationRecord
  validates :name, :description, :location,  presence: true
end
