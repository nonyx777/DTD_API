class CreateJourneys < ActiveRecord::Migration[7.0]
  def change
    create_table :journeys do |t|
      t.references :user, foreign_key: true, null: false
      t.references :vehicle, foreign_key: true, null: false
      t.string :origin_city, null: false
      t.string :destination_city, null: false
      t.date :departure_date, null: false
      t.time :departure_time, null: false
      t.timestamps
    end
  end
end
