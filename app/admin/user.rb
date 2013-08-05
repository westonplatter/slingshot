ActiveAdmin.register User do 

  index do 
    column :first_name
    column :last_name
    column :email
    column :cell
    
    default_actions
  end
  
  show do |user|
    attributes_table do 
      row :email
      row :first_name
      row :last_name
      row :cell
      row :room_number
      row :single
    end
    
    panel  "Devices" do 
      table_for user.devices do
        column "Go To Device" do |device|  link_to "Device Info", admin_device_path(device.id) end 
        column "OS"           do |device|  device.os          end
        column "Kind"         do |device|  device.kind        end 
        column "Status"       do |device|  device.status      end 
        column "Drop Off"     do |device|  device.drop_off    end 
        column "Pick Up"      do |device|  device.pick_up     end 
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
      f.input :single, as: :boolean
    end
    
    f.actions
  end
end
