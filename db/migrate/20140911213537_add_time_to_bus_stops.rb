class AddTimeToBusStops < ActiveRecord::Migration
  def change
    add_column :bus_stops, :stop_time, :time
  end
end
