class BusStation < ActiveRecord::Base
  has_many :bus_stops
  has_many :bus_lines, through: :bus_stops
  validates :station_name, :presence => true, :uniqueness => true, length: { minimum: 4, maximum: 25 }
end
