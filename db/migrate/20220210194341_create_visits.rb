class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :price
      t.date :date
      t.integer :heure

      t.timestamps
    end
  end
end
