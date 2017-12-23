class Offer < ActiveRecord::Base
  belongs_to :admin
  belongs_to :booking
  belongs_to :user
end
