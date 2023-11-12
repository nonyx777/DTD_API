class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :full_name, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :profile_photo, null: false
      t.timestamps
    end

    add_index :drivers, :email, unique: true
  end
end
