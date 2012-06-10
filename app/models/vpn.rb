class Vpn < ActiveRecord::Base
  belongs_to :person
  attr_accessible :password


  # store VPN info this object rather than in the Person object
  def find_or_create_by_person_id
  end

end
