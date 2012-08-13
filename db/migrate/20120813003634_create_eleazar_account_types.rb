class CreateEleazarAccountTypes < ActiveRecord::Migration
  def change
    create_table :eleazar_account_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
