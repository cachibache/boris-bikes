class Person

  attr_reader :bike

  def intialize
  end

  def take_bike station
    @bike = station.take_bike
  end

  def return_bike
    is_bike_broken?
    @bike
  end

  def is_bike_broken?
    @bike.set_status true if rand < 0.1
  end
end