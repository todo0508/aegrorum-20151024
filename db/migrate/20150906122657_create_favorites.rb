class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :account_id
      t.integer :news
      t.integer :game
      t.integer :book
      t.integer :food
      t.integer :family
      t.integer :area
      t.datetime :ingoing
      t.datetime :outgoing

      t.timestamps null: false
    end
  end
end
