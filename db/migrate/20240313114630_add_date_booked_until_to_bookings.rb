class AddDateBookedUntilToBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :date_booked, :date_booked_start
    add_column :bookings, :date_booked_end, :date
  end
end
