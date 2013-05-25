class Vpn < ActiveRecord::Base
  attr_accessible :password, :user_id

  belongs_to :user
end
