class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :sex
      t.date :birthday
      t.integer :role

      t.timestamps null: false
    end
  end
end
