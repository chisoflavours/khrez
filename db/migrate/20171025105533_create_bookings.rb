class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :guests
      t.time :time
      t.date :date
      t.references :venue, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
