class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.boolean :event_type
      t.number :event_maximum_occupancy
      t.number :event_ticket_price
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :properties, null: false, foreign_key: true
    end
  end
end
