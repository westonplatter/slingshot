class RenameTypeToKindDevicesTable < ActiveRecord::Migration
  def change
    rename_column :devices, :type, :kind
  end
end
