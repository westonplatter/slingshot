class Vpn < ActiveRecord::Base
  attr_accessible :password, :user_id, :old_username, :old_password

  belongs_to :user
end
