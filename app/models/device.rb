class Device < ActiveRecord::Base
  belongs_to :person
  has_many :events, :as => :scheduleable

  attr_accessible :name, :os

  def create_dropoff(time)
  	self.events.create(:objective => 'dropoff', :event_time => time)
  end

  def get_dropoff
  	self.events.find_by_objective('dropoff')
  end

  def create_pickup(time)
  	self.events.create(:objective => 'pickup', :event_time => time)
  end

  def get_pickup
  	self.events.find_by_objective('pickup')
  end
end
