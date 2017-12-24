class User < ActiveRecord::Base
  has_many :bookings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :chats
  has_many :offers
  has_many :finals
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
