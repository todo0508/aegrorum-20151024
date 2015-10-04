class AddAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :status, :integer, default: 0
    add_column :accounts, :emotion, :integer, default: 0
  end
end
