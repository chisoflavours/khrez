class Booking < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  belongs_to :admin
  has_many :chats, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :finals, dependent: :destroy
end
