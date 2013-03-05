class Van

  def initialize
    @capacity = 5
    @bikes = []
  end

  def collect_bikes station
    @bikes = station.bikes.select(&:broken?)
    station.bikes.delete_if(&:broken?)
    #station.bikes.select!(&:broken?)
  end

  def deliver_bikes

  end

  def bikes_collected 
     @bikes.count
  end
end