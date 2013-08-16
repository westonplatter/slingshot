ActiveAdmin.register Device do 
  
  index do 
    column "Owner Email" do |device|
      device.user.email
    end
    column :kind
    column :os
    column :complexity
    column :accessories  
    default_actions
  end
  
  csv do 
    column "Owner Email" do |device|
      device.user.email
    end
    column 'Owner first name' do |device|
      device.user.first_name
    end
    column 'Owner last name' do |device|
      device.user.last_name
    end
    column :kind
    column :os
    column :username
    column :password
    column :complexity
    column :accessories  
  end  
end
