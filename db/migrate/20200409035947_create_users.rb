class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :full_name
      t.string  :username
      t.string  :password_digest
      t.integer :phone_number
      t.string  :email
      t.integer :number_of_guests
      t.integer :budget
      t.string :event_type

      t.timestamps
    end
  end
end
