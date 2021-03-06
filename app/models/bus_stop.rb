class BusStop < ActiveRecord::Base
  belongs_to :bus_station
  belongs_to :bus_line
  validates :stop_time, :presence => true
  private
  def stop_params
    params.require(:bus_stop).permit(:stop_time)
    params.require(:bus_stop).permit(:bus_station_id)
    params.require(:bus_stop).permit(:bus_line_id)
  end
end
