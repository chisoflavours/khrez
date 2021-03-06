class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :venues, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :chats
  has_many :offers
  has_many :finals
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  def to_param
    "#{id}-#{ownername}"
  end
end
