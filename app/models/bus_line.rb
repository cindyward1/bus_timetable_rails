class BusLine < ActiveRecord::Base
  has_many :bus_stops, autosave: true, dependent: :destroy
  has_many :bus_stations, through: :bus_stops
  validates :line_name, :presence => true, :uniqueness => true, length: { minimum: 4, maximum: 25 }
  private
  def line_params
    params.require(:bus_line).permit(:line_name)
  end
end
