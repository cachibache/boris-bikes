class Garage < Locations

  def initialize
    @bikes = []
  end

  def fix_bikes
    @bikes.each { |bike| bike.set_status false }
    Control.notify "Broken bikes fixed at garage"
  end

  def accept_bikes bikes
    @bikes = bikes
    Control.notify "Van delivered broken bikes to garage"
    fix_bikes
  end

  def bikes_to_van
    bikes = @bikes
    Control.notify "Van collected fixed bikes from garage"
    @bikes = []
    bikes
  end
end