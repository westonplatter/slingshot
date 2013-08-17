ActiveAdmin.register Vpn do 
  
  controller do
    def scoped_collection
      resource_class.includes(user: [city: [:region]]) # prevents N+1 queries to your database
    end
  end 
  
  index do 
    column 'Email', sortable: 'users.email' do |vpn|
      vpn.user.email
    end
    column 'First name', sortable: 'users.first_name' do |vpn|
      vpn.user.first_name
    end
    
    column 'Last name', sortable: 'users.last_name' do |vpn|
      vpn.user.last_name
    end 
    column "City" do |vpn|
      vpn.user.try(:city).try(:name)
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
      vpn.user.try(:email)
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

