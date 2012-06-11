class AddSimplepasswordToVpn < ActiveRecord::Migration
  def change
    add_column :vpns, :simple_password, :string
  end
end
