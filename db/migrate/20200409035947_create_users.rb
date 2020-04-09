class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :user_full_name
      t.string  :username
      t.string  :password_digest
      t.integer :user_phone_number
      t.string  :user_email
      t.integer :user_number_of_guests
      t.integer :user_budget
      t.boolean :user_event_type

      t.timestamps
    end
  end
end
