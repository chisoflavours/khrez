class AddFinishToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :finish, :time
  end
end
