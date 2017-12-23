class Venue < ActiveRecord::Base
    belongs_to :admin
    has_many :comments, dependent: :destroy
    has_many :bookings, dependent: :destroy
    has_many :chats, dependent: :destroy
    
    def self.search(city, category)
        where("city like ?", "%#{city}%").where("category like ?", "%#{category}%")
    end

    
    has_attached_file :thumbnail, styles: { medium: "600x400#", venueimage: "500x700" }
    validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
    
    

  
    def to_param
      "#{id}-#{name}-#{category}"
    end
    
end
