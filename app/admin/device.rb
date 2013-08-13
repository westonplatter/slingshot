ActiveAdmin.register Device do 
  
  index do 
    column "Owner Email" do |device|
      device.user.email
    end
    column :kind
    column :os
    column :complexity
    column :accessories  
    column :status
    
    default_actions
  end
  
  csv do 
    column "Owner Email" do |device|
      device.user.email
    end
    column :kind
    column :os
    column :complexity
    column :accessories  
    column :status
  end  
end
