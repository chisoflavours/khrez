class AddOwnernameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :ownername, :string
  end
end
