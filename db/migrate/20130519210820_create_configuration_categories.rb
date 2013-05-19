class CreateConfigurationCategories < ActiveRecord::Migration
  def change
    create_table :configuration_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
