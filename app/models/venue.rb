class Venue < ActiveRecord::Base
    belongs_to :admin
   
    has_attached_file :thumbnail, styles: { medium: "700x500", thumb: "350x250>" }
    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

    
end
