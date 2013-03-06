class Station < Locations

  def initialize
    @capacity = 20
    super
  end

  def << bike
    @bikes << bike if bike_count < capacity
  end

  def num_broken_bikes
    @bikes.count(&:broken?)
  end

  def take_bike
    bike = @bikes.reject(&:broken?).first
    @bikes.delete(bike)
  end

  def accept_bikes bikes
    bikes.each { |bike| @bikes << bike }
    notify_control "Van delivered fixed bikes to station\n\n"
  end

  def bikes_to_van
    bikes = @bikes.select(&:broken?)
    notify_control "Van collected broken bikes from station"
    @bikes.delete_if(&:broken?)
    return bikes
  end

  def bikes_in_use
    capacity - bike_count
  end
end