class City < ActiveRecord::Base
  attr_accessible :name, :region_id

  has_many :locations
  has_many :users
  belongs_to :region
end
