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
    Control.broken_bike if bike.broken? == true
    @bikes << bike if num_of_bikes < @capacity
  end

  def num_broken_bikes
    broken_bikes = @bikes.select { |bike| bike if bike.broken? == true }
    broken_bikes.count
  end

  def take_bike
    bike = @bikes.last
    if bike.broken? == false
      @bike = @bikes.pop
    end

    # @bikes.reject { |b| b.broken? == true }.first 
  end
end