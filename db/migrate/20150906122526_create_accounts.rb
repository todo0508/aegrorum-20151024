class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :sex, default: 0
      t.integer :status, default: 0
      t.integer :emotion, default: 0
      t.date :birthday
      t.integer :role, default: 0

      t.timestamps null: false
    end
  end
end
