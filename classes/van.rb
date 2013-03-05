class Van

  def initialize
    @bikes = []
  end

  def collect_bikes location
    @bikes = location.bikes_to_van
  end

  def deliver_bikes location
    location.accept_bikes @bikes
    @bikes = []
  end

  def bikes_count
     @bikes.count
  end
end