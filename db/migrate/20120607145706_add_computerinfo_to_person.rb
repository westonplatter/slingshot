class AddComputerinfoToPerson < ActiveRecord::Migration
  def change
  	add_column :devices, :computer_username, :string
  	add_column :devices, :computer_password, :string
  	add_column :devices, :os, :string

  	add_column :people, :email_client, :string

  end
end
