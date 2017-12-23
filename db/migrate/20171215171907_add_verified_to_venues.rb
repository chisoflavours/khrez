class AddVerifiedToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :verified, :boolean
  end
end
