class CreateVpns < ActiveRecord::Migration
  def change
    create_table :vpns do |t|
      t.string :password
      t.references :person

      t.timestamps
    end
    add_index :vpns, :person_id
  end
end
