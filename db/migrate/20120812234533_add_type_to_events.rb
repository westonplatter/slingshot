class AddTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :objective, :string
  end
end
