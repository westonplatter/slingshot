ActiveAdmin.register Device do 
  
  index do 
    column "Owner Email" do |device|
      device.user.email
    end
    
    column :kind
    column :os
    column :drop_off
    column :pick_up
    column :complexity
    column :accessories  
    
    default_actions
  end
  
  csv do 
    column "Owner Email" do |device|
      device.user.email
    end
    
    column :kind
    column :os
    column :drop_off
    column :pick_up
    column :complexity
    column :accessories  
  end  
end
