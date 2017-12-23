class Booking < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  belongs_to :admin
  has_many :chats
  has_many :offers
  has_many :finals
end
