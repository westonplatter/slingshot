class ChangeStatusOnDevices < ActiveRecord::Migration
  def change
    rename_column :devices, :status_id, :status
    change_column :devices, :status, :string
  end
end
