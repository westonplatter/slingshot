class AddRegionDestinationToPeople < ActiveRecord::Migration
  def change
    add_column :people, :region_destination, :string
  end
end
