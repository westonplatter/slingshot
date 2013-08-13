ActiveAdmin.register Vpn do 
  
  index do 
    column "Owner Email" do |device|
      device.user.email
    end
    column :password
    column :old_username
    column :old_password
    column "Region" do |vpn|
      vpn.user.try(:location).try(:region).try(:name)
    end
    
    default_actions
  end
  
  csv do 
    column "Owner Email" do |device|
      device.user.email
    end
    column "First name" do |device|
      device.user.first_name
    end
    column "Last name" do |device|
      device.user.last_name
    end
    column :password
    column :old_username
    column :old_password
    column "Region" do |vpn|
      vpn.user.try(:location).try(:region).try(:name)
    end
  end  
end

