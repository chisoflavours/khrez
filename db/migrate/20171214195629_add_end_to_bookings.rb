class AddEndToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :bookings, :time
  end
end
