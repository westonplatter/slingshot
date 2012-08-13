class CreateVpnAccountGroups < ActiveRecord::Migration
  def change
    create_table :vpn_account_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
