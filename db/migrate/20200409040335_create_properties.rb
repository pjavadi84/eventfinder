class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.string :manager_name
      t.integer :phone_number
      t.integer :street_address_number
      t.string :street_address_name
      t.string :address_city
      t.string :address_state
      t.string :event_type
      t.integer :maximum_occupancy
      t.float :profit_expectation
      t.belongs_to :landlord, null: false, foreign_key: true

      t.timestamps
    end
  end
end
