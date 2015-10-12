class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.datetime :recorded
      t.integer :elec_sts
      t.integer :gas_sts
      t.integer :water_sts
      t.integer :unknown

      t.timestamps null: false
    end
  end
end
