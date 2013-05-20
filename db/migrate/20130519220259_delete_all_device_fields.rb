class DeleteAllDeviceFields < ActiveRecord::Migration
  
  def up
    remove_column :devices, :name
    remove_column :devices, :device_type
  end

  def down
    add_column :devices, :name, :string
    add_column :devices, :device_type, :string
  end
end
