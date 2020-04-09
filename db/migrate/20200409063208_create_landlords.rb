class CreateLandlords < ActiveRecord::Migration[6.0]
  def change
    create_table :landlords do |t|
      t.string :landlord_username
      t.string :password_digest
      t.number :landloard_phone_number
      t.number :landlord_street_address_number
      t.string :landlord_street_address_name
      t.string :landlord_address_city
      t.string :landlord_address_state

      t.timestamps
    end
  end
end
