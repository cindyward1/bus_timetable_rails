class BusStation < ActiveRecord::Base
  has_many :bus_stops, autosave: true, dependent: :destroy
  has_many :bus_lines, through: :bus_stops
  validates :station_name, :presence => true, :uniqueness => true, length: { minimum: 4, maximum: 25 }
private
  def station_params
    params.require(:bus_station).permit(:station_name)
  end
end
