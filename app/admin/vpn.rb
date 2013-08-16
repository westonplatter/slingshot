ActiveAdmin.register Vpn do 
  
  index do 
    column "Owner Email" do |vpn|
      vpn.user.email
    end
    column "City" do |vpn|
      vpn.user.city.name if vpn.user.city
    end
    column "Region" do |vpn|
      vpn.user.city.try(:region).try(:name)
    end
    column :password
    column :old_username
    column :old_password
    
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :user
      f.input :password
      f.input :old_password
      f.input :old_username
    end
    
    f.actions
  end
  
  show do |vpn|
    attributes_table do 
      row :user
      row 'City' do |vpn|
        vpn.user.city
      end
      row 'Region' do |vpn|
        vpn.user.city.try(:region)
      end
      row :password
      row :old_username
      row :old_password
    end
  end
  
  csv do 
    column "Owner Email" do |vpn|
      vpn.user.email
    end
    column "First name" do |vpn|
      vpn.user.first_name
    end
    column "Last name" do |vpn|
      vpn.user.last_name
    end
    column :password
    column :old_username
    column :old_password
    column "City" do |vpn|
      vpn.user.city.name if vpn.user.city
    end  
    column "Region" do |vpn|
      vpn.user.city.try(:region).try(:name)
    end  
  end  
end

