class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price
      t.string :price_plan
      t.string :postcode
      t.string :county
      t.string :street_line_one
      t.string :street_line_two
      t.string :city
      t.integer :capacity_standing
      t.integer :capacity_sitting
      t.integer :size
      t.integer :parking_spaces
      t.integer :kitchens
      t.boolean :disabled_acess
      t.boolean :outside_spaces
      t.integer :toilets
      t.integer :tables
      t.integer :chairs
      t.text :extra_info
      t.boolean :external_catering_allowed
      t.boolean :external_alcahool_allowed
      t.boolean :inhouse_catering_provided
      t.boolean :inhouse_alcahool_provided
      t.boolean :storage
      t.boolean :air_conditionind
      t.boolean :wifi
      t.boolean :projector

      t.timestamps null: false
    end
  end
end
