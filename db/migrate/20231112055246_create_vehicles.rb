class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type, null: false
      t.integer :seating_capacity, null: false
      t.string :amenities, null: true
      t.timestamps
    end
  end
end
