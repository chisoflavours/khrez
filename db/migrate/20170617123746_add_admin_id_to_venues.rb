class AddAdminIdToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :admin_id, :integer
  end
end
