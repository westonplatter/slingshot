class ChangeStatusOnDevices < ActiveRecord::Migration
  def change
    rename_column :devices, :status_id, :status
  end
end
