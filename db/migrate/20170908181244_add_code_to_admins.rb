class AddCodeToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :code, :string
  end
end
