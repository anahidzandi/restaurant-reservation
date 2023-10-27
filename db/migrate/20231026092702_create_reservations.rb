class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :date
      t.integer :table
      t.integer :seating_capacity
      t.text :addition_information

      t.timestamps
    end
  end
end
