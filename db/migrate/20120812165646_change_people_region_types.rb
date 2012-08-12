class ChangePeopleRegionTypes < ActiveRecord::Migration
  def up
  	change_column :people, :region_destination, :integer
  	change_column :people, :region_sending, :integer
  end

  def down
  	change_column :people, :region_destination, :string
  	change_column :people, :region_sending, :string
  end
end
