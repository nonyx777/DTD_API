class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :journey_sightseeing_stop, foreign_key: true, null: false
      t.references :payment, foreign_key: true, null: false
      t.float :total_cost, null: false
      t.date :booking_date, null: false
      t.integer :remaining_day, null: false
      t.timestamps
    end
  end
end
