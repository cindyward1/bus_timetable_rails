require "spec_helper"

describe BusStation do
  it { should have_many :bus_stops }
  it { should have_many :bus_lines }
  it { should validate_presence_of :station_name }
  it { should validate_uniqueness_of :station_name }
  it { should ensure_length_of(:station_name).is_at_most(25) }
  it { should ensure_length_of(:station_name).is_at_least(4) }
end
