class BusLine < ActiveRecord::Base
  has_many :bus_stops
  has_many :bus_stations, through: :bus_stops
  validates :line_name, :presence => true, :uniqueness => true, length: { minimum: 4, maximum: 25 }
end
