class AddStartTimeEndTimeToReservation < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :date, :date
    add_column :reservations, :start_time, :time
    add_column :reservations, :end_time, :time
  end
end
