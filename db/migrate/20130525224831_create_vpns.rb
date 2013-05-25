class CreateVpns < ActiveRecord::Migration
  def change
    create_table :vpns do |t|
      t.integer :user_id
      t.string :password

      t.timestamps
    end
  end
end
