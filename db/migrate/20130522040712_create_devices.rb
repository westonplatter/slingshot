class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :user_id
      t.string :username
      t.string :password
      t.string :type
      t.string :os
      t.integer :status
      t.datetime :drop_off
      t.datetime :pick_up
      t.integer :complexity
      t.string :accessories

      t.timestamps
    end
  end
end
