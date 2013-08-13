ActiveAdmin.register Vpn do 
  
  index do 
    column "Owner Email" do |device|
      device.user.email
    end
    column :password
    column :old_username
    column :old_password
    
    default_actions
  end
  
  csv do 
    column "Owner Email" do |device|
      device.user.email
    end
    column :password
    column :old_username
    column :old_password
  end  
end

