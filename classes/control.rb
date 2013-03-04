class Control

  def initialize
    @bikes, @stations, @vans, @garages, @people = [],[],[],[],[]
    20.times { |i|  @bikes << Bike.new(i) }
    1.times  { |i|  @stations << Station.new(i) }
    1.times  { |i|  @vans << Van.new(i) }
    1.times  { |i|  @garages << Garage.new(i) }
    30.times { |i|  @people << Person.new(i) }
    run
  end



  def run

  end

  def report

  end
end