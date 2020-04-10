class CreateLandlords < ActiveRecord::Migration[6.0]
  def change
    create_table :landlords do |t|
      t.string :username
      t.string :password_digest
      t.integer :phone_number
      t.integer :street_address_number
      t.string :street_address_name
      t.string :address_city
      t.string :address_state
      t.integer :property_sales

      t.timestamps
    end
  end
end
