class CreateBusStations < ActiveRecord::Migration
  def change
    create_table :bus_stations do |t|
      t.string :station_name
      t.timestamps
    end
  end
end
