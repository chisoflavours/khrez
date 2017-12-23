class CreateFinals < ActiveRecord::Migration
  def change
    create_table :finals do |t|
      t.references :admin, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true
      t.integer :full_money

      t.timestamps null: false
    end
  end
end
