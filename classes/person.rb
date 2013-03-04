class Person

  attr_reader :bike

  def intialize

  end

  def take_bike station
    @bike = station.bikes.pop
  end

  def return_bike
    @bike
  end
end