class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :admin, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :deposit_price
      t.time :time_start
      t.time :time_end
      t.date :deposit_date
      t.integer :deposit_guests
      t.text :deposit_tandc

      t.timestamps null: false
    end
  end
end
