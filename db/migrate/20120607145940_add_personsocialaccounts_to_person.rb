class AddPersonsocialaccountsToPerson < ActiveRecord::Migration
  def change
  	add_column :people, :faceook_name, :string
  	add_column :people, :google_plugs_name, :string
  	
  end
end
