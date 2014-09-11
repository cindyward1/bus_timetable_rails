class BusStop < ActiveRecord::Base
  belongs_to :bus_station
  belongs_to :bus_line
  validates :stop_name, :presence => true, :uniqueness => true, length: { minimum: 4, maximum: 25 }
  validates :stop_time, :presence => true
end
