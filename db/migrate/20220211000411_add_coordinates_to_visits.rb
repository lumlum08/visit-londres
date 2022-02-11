class AddCoordinatesToVisits < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :latitude, :float
    add_column :visits, :longitude, :float
  end
end
