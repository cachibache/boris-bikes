class Control

  attr_accessor :rented_bikes

  def initialize

    @people = []

    30.times { @people << Person.new }

    @station = Station.new
    20.times { @station << Bike.new }

    @van = Van.new
    @garage = Garage.new

    run
  end

  def run
    @people.each { |p| p.take_bike @station  if rand < 0.25 }
    @people.each { |p| @station << p.return_bike if p.bike != nil && rand < 0.3 }

    @van.collect_bikes @station if @station.num_broken_bikes

    report
  end

  def report
    puts "Number of bikes in station: #{@station.num_of_bikes.to_s}"
    puts "Number of broken bikes: #{@station.num_broken_bikes}"
    puts "Broken bikes collected: #{@van.bikes_collected.to_s}"
  end
end