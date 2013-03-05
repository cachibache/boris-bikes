class Garage

  def initialize
    @bikes = []
  end

  def fix_bikes
    @bikes.each { |bike| bike.status = false }
  end

  def accept_bikes bikes
    @bikes = bikes
    fix_bikes
  end

  def bike_count
    @bikes.count
  end

  def bikes_to_van
    bikes = @bikes
    @bikes = []
    bikes
  end
end