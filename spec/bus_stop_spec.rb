require "spec_helper"

describe BusStop do
  it { should belong_to :bus_station }
  it { should belong_to :bus_line }
  it { should validate_presence_of :stop_time }
end
