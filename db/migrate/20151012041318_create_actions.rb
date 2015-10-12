class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.datetime :recorded
      t.integer :account_id
      t.integer :temperature
      t.integer :huminity
      t.integer :wing
      t.integer :building
      t.integer :emergency
      t.integer :userType
      t.integer :numStep
      t.integer :building
      t.float :speed_new
      t.float :speed_old
      t.integer :shake
      t.integer :proximity
      t.float :latitude
      t.float :longitude
      t.float :heading
      t.integer :brightness
      t.integer :batteryState
      t.float :acceleration_x
      t.float :acceleration_y
      t.float :acceleration_z

      t.timestamps null: false
    end
  end
end
