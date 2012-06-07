class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :color
      t.references :person

      t.timestamps
    end
    add_index :devices, :person_id

  end
end
