class AddBetterDeviceFields < ActiveRecord::Migration
  def change
    add_column :devices, :username,   :string
    add_column :devices, :password,   :string
    
    add_column :devices, :type,       :integer
    add_column :devices, :os,         :integer
    add_column :devices, :status,     :integer
    add_column :devices, :drop_off,   :datetime
    add_column :devices, :pick_up,    :datetime
    add_column :devices, :complexity, :integer

    add_column :devices, :included_accessories, :string
  end
end
