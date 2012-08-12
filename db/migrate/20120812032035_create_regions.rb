class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.boolean :sending
      t.boolean :destination
      t.references :person

      t.timestamps
    end
  end
end
