class Person < ActiveRecord::Base
  has_one :vpn
  has_many :devices
  has_many :regions
  
  attr_accessible :firstname, 
                  :lastname, 
                  :cell, 
                  :email,
                  :region_sending,
                  :region_destination,
                  :married

  # the user's single sign on info is created or read from the database
  def self.find_or_create_person_from_auth(auth_hash)
    @attributes = {
      firstname: auth_hash.extra.attributes.first.firstName,
      lastname: auth_hash.extra.attributes.first.lastName,
      email: auth_hash.extra.attributes.first.email,
      guid: auth_hash.extra.attributes.first.sooGuid,
      username: auth_hash.extra.attributes.first.username
    }

    @person = Person.find_by_email(@attributes[:email])
    if @person.nil?
      @person = Person.create!(@attributes, without_protection: true)
    end
    return @person
  end

  def sending
    self.regions.where(:sending =>  true).first ? self.regions.where(:sending =>  true).first  : []
  end

  def destination
    self.regions.where(:destination => true).first ? self.regions.where(:destination => true).first : []
  end

end
