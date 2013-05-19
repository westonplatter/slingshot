class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.integer :configuration_category_id
      t.string :value
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
