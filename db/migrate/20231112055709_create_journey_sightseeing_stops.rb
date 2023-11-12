class CreateJourneySightseeingStops < ActiveRecord::Migration[7.0]
  def change
    create_table :journey_sightseeing_stops do |t|
      t.references :journey, foreign_key: true, null: false
      t.references :sightseeing_stop, foreign_key: true, null: true
      t.timestamps
    end
  end
end
