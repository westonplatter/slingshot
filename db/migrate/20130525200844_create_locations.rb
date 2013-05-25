class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :region_id
      t.integer :city_id
      t.integer :user_id

      t.timestamps
    end

    
  end
end
