class Airport
  attr_reader :capacity

  def initialize(capacity: 50)
    @capacity = capacity
    p @capacity
  end

  def land(plane)
    raise "Airport is full" if capacity == 0
    @capacity -= 1 
  end
end
