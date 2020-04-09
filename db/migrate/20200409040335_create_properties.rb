class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.number :property_phone_number
      t.number :property_street_address_number
      t.string :property_street_address_name
      t.string :property_address_city
      t.string :property_address_state
      t.boolean :property_event_type
      t.number :property_maximum_occupancy
      t.number :property_ticket_price

      t.timestamps
    end
  end
end
