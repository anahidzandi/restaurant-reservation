class LinkTableToReservation < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations_tables do |t|
      t.references :reservation
      t.references :table
    end    
  end
end
