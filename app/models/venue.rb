class Venue < ActiveRecord::Base
    belongs_to :admin
    has_many :comments
    
    def self.search(search)
        where("city LIKE ? OR county LIKE ? OR category LIKE ? ", "%#{search}%", "%#{search}%","%#{search}%") 
    end

    
    has_attached_file :thumbnail, styles: { medium: "600x400#", venueimage: "500x700" }
    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
    
    
    has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
  
    def to_param
      "#{id}-#{name}-#{category}"
    end
    
end
