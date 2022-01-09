class UpdateEventsTableDefaults < ActiveRecord::Migration[7.0]
  def change
    change_column_null :events, :name, false
    change_column_default :events, :itinerary, from: nil, to: {}
    change_column_default :events, :capacity_unit, from: nil, to: 'guest'
  end
end
