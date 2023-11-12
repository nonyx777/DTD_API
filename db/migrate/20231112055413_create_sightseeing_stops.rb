class CreateSightseeingStops < ActiveRecord::Migration[7.0]
  def change
    create_table :sightseeing_stops do |t|
      t.string :stop_name, null: false
      t.text :description, null: false 
      t.timestamps
    end
  end
end
