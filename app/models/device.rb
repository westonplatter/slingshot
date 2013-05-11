class Device < ActiveRecord::Base
  attr_accessible :device_type, :name, :user_id

  belongs_to :user
end
