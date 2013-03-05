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
    Control.broken_bike if bike.broken?
    @bikes << bike if num_of_bikes < @capacity
  end

  def num_broken_bikes
    # broken_bikes = @bikes.select { |bike| bike if bike.broken? }
    # broken_bikes.count
    # @bikes.count{|b| b.broken? }
    @bikes.count(&:broken?)
  end

  def take_bike
    bike = @bikes.reject { |b| b.broken? }.first
    @bikes.delete(bike)
  end
end