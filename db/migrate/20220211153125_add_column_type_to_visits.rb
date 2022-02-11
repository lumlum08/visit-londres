class AddColumnTypeToVisits < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :type, :string
  end
end
