require 'airport'

describe Airport do
  it "is initialized with a default capacity" do
    airport = Airport.new
    expect(airport.capacity).to eq(50)
  end

  it "allows landing when it has capacity" do
    airport = Airport.new(capacity: 2)
    airport.land
    expect{ airport.land }.not_to raise_error
  end

  it "prevents landing when it is full" do
    airport = Airport.new(capacity: 1)
    airport.land
    expect{ airport.land }.to raise_error("Airport is full")
  end
end
