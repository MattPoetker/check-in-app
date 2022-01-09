class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name # null: false
      t.datetime :start_date
      t.datetime :end_date
      t.string :location_address
      t.jsonb :itinerary # default: {}
      t.integer :capacity
      t.string :capacity_unit # default: "Guest"

      t.timestamps
    end
  end
end
