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
end