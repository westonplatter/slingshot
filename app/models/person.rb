class Person < ActiveRecord::Base
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :lastname, :cell, :email, :vpn_password, :region
  has_many :devices

  # the user's SSO info is input to the database
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

    @person
  end

end
