class DeleteStatusTable < ActiveRecord::Migration
  def up
    drop_table :statuses
  end
  
  def down
    create_table :statuses do |t|
      t.string :value
      t.timestamps
    end
  end
end
