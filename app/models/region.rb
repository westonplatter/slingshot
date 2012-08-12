class Region < ActiveRecord::Base
  belongs_to :person
  attr_accessible :destination, :name, :sending
end
