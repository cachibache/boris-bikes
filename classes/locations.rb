class Locations

  def initialize
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def capacity
    @capacity
  end

  def notify_control msg
    Control.notify msg
  end
end