class CreateEmailCommunications < ActiveRecord::Migration[7.0]
  def change
    create_table :email_communications do |t|
      t.references :user, foreign_key: true, null: false
      t.text :email_detail, null: false
      t.timestamps
    end
  end
end
