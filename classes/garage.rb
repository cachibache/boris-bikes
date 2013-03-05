class Garage < Locations

  def fix_bikes
    @bikes.each { |bike| bike.set_status false }
    notify_control "Broken bikes fixed at garage"
  end

  def accept_bikes bikes
    @bikes = bikes
    notify_control "Van delivered broken bikes to garage"
    fix_bikes
  end

  def bikes_to_van
    bikes = @bikes
    notify_control "Van collected fixed bikes from garage"
    @bikes = []
    bikes
  end
end