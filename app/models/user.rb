class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable, :registerable, :recoverable 
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:cas]
  
  attr_accessible :email, 
    :password, 
    :password_confirmation, 
    :remember_me, 
    :provider, 
    :uid, 
    :first_name, 
    :last_name, 
    :cell, 
    :room_number, 
    :married, 
    :spouse_fullname, 
    :want_spouse_account, 
    :ccc_account, 
    :facebook, 
    :google_plus

  has_many :devices
  has_one :location
  has_one :vpn
  
  def self.find_or_create_from_cas(auth_hash)
    hash_attributes = {
      first_name: auth_hash.extra.attributes.first.firstName,
      last_name: auth_hash.extra.attributes.first.lastName,
      email: auth_hash.extra.attributes.first.email,
      uid: auth_hash.extra.attributes.first.ssoGuid,
      password: Devise.friendly_token[0,20]
    }

    @user = self.find_by_email(hash_attributes[:email])
    @user = self.create!(hash_attributes) if @user.nil?
    @user
  end

  def display_name
    email # || first_name + " " + last_name 
  end


end
