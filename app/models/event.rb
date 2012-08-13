class Event < ActiveRecord::Base
  attr_accessible :drop_off, :event_time
  belongs_to :scheduleable, :polymorphic => true

  attr_accessible :event_time, :objective
end
