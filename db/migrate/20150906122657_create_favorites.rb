class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :account_id
      t.string :news
      t.string :game
      t.string :hoby

      t.timestamps null: false
    end
  end
end
