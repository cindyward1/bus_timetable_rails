class CreateBusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops do |t|
      t.string :stop_name
      t.integer :bus_line_id
      t.integer :bus_station_id
      t.timestamps
    end
  end
end
