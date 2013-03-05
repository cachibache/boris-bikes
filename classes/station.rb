class Station

  attr_accessor :bikes

  def initialize
    @capacity = 20
    @bikes = []
  end

  def num_of_bikes
    @bikes.count
  end

  def << bike
    @bikes << bike if num_of_bikes < @capacity
  end

  def num_broken_bikes
    @bikes.count(&:broken?)
  end

  def take_bike
    bike = @bikes.reject(&:broken?).first
    @bikes.delete(bike)
  end
end