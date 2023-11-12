class CreateDriverAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_assignments do |t|
      t.references :booking, foreign_key: true, null: false
      t.references :driver, foreign_key: true, null: false
      t.timestamps
    end
  end
end
