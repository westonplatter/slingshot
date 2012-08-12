class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.time :event_time
      t.boolean :drop_off
      t.integer :scheduleable_id
      t.string :scheduleable_type

      t.timestamps
    end
  end
end
