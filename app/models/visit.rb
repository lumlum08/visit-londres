class Visit < ApplicationRecord
  CATEGORIES = ["restaurant", "activités", "transport", "ballade", "hotel"]
  validates :category, inclusion: {in: CATEGORIES}

  validates :name, :description, :location,  presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_category, against: :category

end
