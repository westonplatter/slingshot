class CreatePeople < ActiveRecord::Migration
  def change
		create_table :people do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :guid
      t.string :username
      t.string :cell

    end
  end
end
