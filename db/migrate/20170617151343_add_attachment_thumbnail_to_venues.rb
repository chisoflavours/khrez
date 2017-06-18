class AddAttachmentThumbnailToVenues < ActiveRecord::Migration
  def self.up
    change_table :venues do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :venues, :thumbnail
  end
end
