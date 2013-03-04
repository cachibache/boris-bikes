class Control

  def initialize

    @people = 30.times { @people << Person.new }

    @station = Station.new
    20.times { @station << Bike.new }

    @van = Van.new
    @garage = Garage.new

    run
  end



  def run

  end

  def report

  end
end