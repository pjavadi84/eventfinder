class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :type
      t.integer :maximum_occupancy
      t.integer :ticket_price
      t.datetime :date_and_time
      t.integer :duration
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :property, null: false, foreign_key: true
    end
  end
end
