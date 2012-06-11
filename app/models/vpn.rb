class Vpn < ActiveRecord::Base
  belongs_to :person
  attr_accessible :password, :simple_password

  # validates :simple_password, :format => { 
  # 	:with => ~/([a-z0-9\~\`\!\@\#\$\%\^\&\*\(\)\_\-\+\[\]\{\}\|\\\;\:\'\"\,\.\/\<\>\?]+)/, 
  # 	:message => "Password needs to contain 4 described elements" }
end
