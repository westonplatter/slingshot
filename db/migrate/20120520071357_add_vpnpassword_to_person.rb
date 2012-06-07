class AddVpnpasswordToPerson < ActiveRecord::Migration
  def change
    add_column :people, :vpn_password, :string

  end
end
