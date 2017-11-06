class Picture < ActiveRecord::Base
  belongs_to :venue
  has_attached_file :photo, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
end