class ChangeTablesToNumberOfTables < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :table, :number_of_tables
  end
end
