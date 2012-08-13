class RemoveTesterTable < ActiveRecord::Migration
  def change
  	drop_table :testers
  end
end
