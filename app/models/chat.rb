class Chat < ActiveRecord::Base
  belongs_to :user
  belongs_to :admin
  belongs_to :booking
  belongs_to :venue
end
