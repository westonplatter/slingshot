class Device < ActiveRecord::Base
  attr_accessible :accessories, :complexity, :drop_off, :os, :password, 
    :pick_up, :status_id, :type, :user_id, :username, :kind

  belongs_to :user
end
