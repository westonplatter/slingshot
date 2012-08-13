class Vpn < ActiveRecord::Base
  belongs_to :person
  
  attr_accessible :password, :simple_password, :area, :account_group, :eleazar_account_type

  # validates :simple_password, :format => { 
  # 	:with => ~/([a-z0-9\~\`\!\@\#\$\%\^\&\*\(\)\_\-\+\[\]\{\}\|\\\;\:\'\"\,\.\/\<\>\?]+)/, 
  # 	:message => "Password needs to contain 4 described elements" }

  def options_area_choices
  	AreaChoices.all.collect{|ac| ac.name} # => ["choice one", ["two"]
  end

  def options_vpn_account_groups
  	VpnAccountGroups.all.collect{|g| g.name} # => ["group 1", "group 2"]
  end

  def options_eleazar_account_types
    EleazarAccountTypes.all.collect{|e| e.name} # => ["one", "two"]
  end
end
