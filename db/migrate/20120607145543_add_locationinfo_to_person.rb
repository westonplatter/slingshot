class AddLocationinfoToPerson < ActiveRecord::Migration
  def change
  	add_column :people, :city, :string
  end
end
