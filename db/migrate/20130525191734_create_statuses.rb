class CreateStatuses < ActiveRecord::Migration
  
  def change
    create_table :statuses do |t|
      t.string :value
      t.timestamps
    end

    rename_column :devices, :status, :status_id
  end

end
