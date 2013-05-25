class Location < ActiveRecord::Base
  attr_accessible :city_id, :region_id, :user_id

  validates_presence_of :region

  belongs_to :user
  belongs_to :city
  belongs_to :region
end
