class CreateTesters < ActiveRecord::Migration
  def change
    create_table :testers do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
