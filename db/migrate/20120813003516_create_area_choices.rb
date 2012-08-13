class CreateAreaChoices < ActiveRecord::Migration
  def change
    create_table :area_choices do |t|
      t.string :name

      t.timestamps
    end
  end
end
