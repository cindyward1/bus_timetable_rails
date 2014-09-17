class RemoveNameBusStop < ActiveRecord::Migration
  def change
    remove_column :bus_stops, :stop_name
  end
end
