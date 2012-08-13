class AddRelationshipStatusToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :married, :boolean
  end
end
