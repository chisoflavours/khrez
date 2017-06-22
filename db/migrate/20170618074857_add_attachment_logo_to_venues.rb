class AddAttachmentLogoToVenues < ActiveRecord::Migration
  def self.up
    change_table :venues do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :venues, :logo
  end
end
