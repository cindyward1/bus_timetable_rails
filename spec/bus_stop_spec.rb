require "spec_helper"

describe BusStop do
  it { should belong_to :bus_station }
  it { should belong_to :bus_line }
  it { should validate_presence_of :stop_name }
  it { should validate_uniqueness_of :stop_name }
  it { should ensure_length_of(:stop_name).is_at_most(25) }
  it { should ensure_length_of(:stop_name).is_at_least(4) }
  it { should validate_presence_of :stop_time }
end
