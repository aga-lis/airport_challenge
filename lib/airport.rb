class Airport
  def initialize(capacity)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise "Airport full, can't land" if @planes.size >= @capacity
    @planes << plane
  end

  def take_off(plane)
  end

  def full?
  end
end
