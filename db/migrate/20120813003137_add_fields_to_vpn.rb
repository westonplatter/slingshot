class AddFieldsToVpn < ActiveRecord::Migration
  def change
  	add_column :vpns, :area, :string
  	add_column :vpns, :account_group, :string
  	add_column :vpns, :eleazar_account_type, :string
  end
end
