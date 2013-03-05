class Van

  def initialize
    @bikes = []
  end

  def collect_bikes location
    @bikes = location.bikes.select(&:broken?)
    location.bikes.delete_if(&:broken?)
  end

  def deliver_bikes garage
    garage.accept_bikes @bikes
    @bikes = []
  end

  def deliver_bikes location
    location.accept_bikes @bikes
    @bikes = []
  end

  def bikes_collected 
     @bikes.count
  end
end