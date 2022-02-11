class ChangeColumnNameTypeToVisits < ActiveRecord::Migration[6.1]
  def change
    rename_column(:visits, :type, :category)
  end
end
