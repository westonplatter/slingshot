
class RenameRegionColumn < ActiveRecord::Migration
  def up
  	rename_column :people, :region, :region_sending
  end

  def down
  	rename_column :people, :region_sending, :region
  end
end
