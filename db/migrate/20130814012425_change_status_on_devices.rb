class ChangeStatusOnDevices < ActiveRecord::Migration
  def up
    rename_column :devices, :status_id, :status
    change_column :devices, :status, :string
  end
  
  def down
    remove_column :devices, :status
    add_column :devices, :status_id, :integer
  end
end
