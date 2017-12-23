class Final < ActiveRecord::Base
  belongs_to :admin
  belongs_to :user
  belongs_to :booking
end
