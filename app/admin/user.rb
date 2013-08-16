ActiveAdmin.register User do 

  index do |user|
    column :first_name
    column :last_name
    column :email
    column :cell
    column 'City' do |user| 
      user.city.try(:name) 
    end
    column'Region' do |user| 
      user.city.try(:region).try(:name) if user.city.try(:region)
    end
    
    default_actions
  end
  
  show do |user|
    attributes_table do 
      row :email
      row :first_name
      row :last_name
      row :cell
      row :room_number
      row :married
      row :non_secure_email
      row :ccc_account
      row :facebook
      row :google_plus
      row :twitter
      
      row 'City' do |user|
        user.city
      end
      row 'Row' do |user|
        user.city.try(:region)
      end
      
      row "VPN Password" do |user| 
        user.try(:vpn).try(:password)
      end
      row "VPN 2nd Year STINTer Password" do |user|
        user.try(:vpn).try(:old_password)
      end
      row "VPN 2nd Year STINTer Username" do |user|
        user.try(:vpn).try(:old_username)
      end
    end
    
    panel  "Devices" do 
      table_for user.devices do
        column "Go To Device" do |device|  link_to "Device Info", admin_device_path(device.id) end 
        column "OS"           do |device|  device.os          end
        column "Kind"         do |device|  device.kind        end 
        column "Username"     do |device|  device.username    end
        column "Pasword"      do |device|  device.password    end
        column "Complexity"   do |device|  device.complexity  end 
      end
    end
    
    active_admin_comments
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :cell
      f.input :room_number
      f.input :married, as: :boolean
      f.input :city
    end
    
    f.actions
  end
  
  csv do |user|
    column :email
    column :first_name
    column :last_name
    column :non_secure_email
    column :cell
    column :room_number
    column :married
    column :spouse_fullname
    column :ccc_account
    column :facebook
    column :google_plus
    column :twitter
    
    column "VPN Password" do |user| 
      user.try(:vpn).try(:password)
    end
    column "VPN 2nd Year STINTer Password" do |user|
      user.try(:vpn).try(:old_password)
    end
    column "VPN 2nd Year STINTer Username" do |user|
      user.try(:vpn).try(:old_username)
    end
    column "City" do |user|
      user.city.try(:name)
    end  
    column "Region" do |user|
      user.city.try(:region).try(:name)
    end  
  end
end
