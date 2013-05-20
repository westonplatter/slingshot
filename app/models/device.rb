class Device < ActiveRecord::Base
  attr_accessible :device_type, :name, :user_id

  belongs_to :user

  validates_presence_of :user_id
end
