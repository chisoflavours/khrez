class Booking < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  belongs_to :admin
end
