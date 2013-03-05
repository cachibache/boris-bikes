class Van

  def initialize
    @bikes = []
  end

  def collect_bikes station
    @bikes = station.bikes.select(&:broken?)
    station.bikes.delete_if(&:broken?)
  end

  def deliver_bikes

  end

  def bikes_collected 
     @bikes.count
  end
end