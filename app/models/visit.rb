class Visit < ApplicationRecord
  validates :name, :description, :location,  presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
