require "spec_helper"

describe BusLine do
  it { should have_many :bus_stops }
  it { should have_many :bus_stations }
  it { should validate_presence_of :line_name }
  it { should validate_uniqueness_of :line_name }
  it { should ensure_length_of(:line_name).is_at_most(25) }
  it { should ensure_length_of(:line_name).is_at_least(4) }
end
