class Garage

  attr_accessor :bikes

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

  def return_bikes
    @bikes
  end

  def bike_count
    @bikes.count
  end
end