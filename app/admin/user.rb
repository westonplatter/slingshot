ActiveAdmin.register User do 

  index do |user|
    column :first_name
    column :last_name
    column :email
    column :cell
    column "Region" do |user|
      user.try(:location).try(:region).try(:name)
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
    end
    
    f.actions
  end
end
