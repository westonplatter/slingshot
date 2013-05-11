class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :user_id
      t.string :name
      t.integer :device_type

      t.timestamps
    end
  end
end
