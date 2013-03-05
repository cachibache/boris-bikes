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

    @bikes_at_station = @station.num_of_bikes

    @bikes_in_use = @station.capacity -  @station.num_of_bikes

    @broken_bikes_at_station = @station.num_broken_bikes

    @van.collect_bikes @station if @station.num_broken_bikes

    @bikes_at_station_after_borken_collected = @station.num_of_bikes

    @broken_bikes_collected = @van.bikes_count

    @van.deliver_bikes @garage  if @van.bikes_count

    @bikes_in_garage = @garage.bike_count

    @van.collect_bikes @garage if @garage.bike_count

    @bikes_in_van = @van.bikes_count

    @van.deliver_bikes @station  if @van.bikes_count

    report
  end

  def report
    puts "Number of bikes in station: #{@bikes_at_station}"
    puts "Number of broken bikes at station: #{@broken_bikes_at_station}"
    puts "Broken bikes collected by van: #{@broken_bikes_collected}"
    puts "Number of bikes in station: #{@bikes_at_station_after_borken_collected}"
    puts "Bikes in use: #{@bikes_in_use}"
    puts "Number of bikes in garage: #{@bikes_in_garage}"
    puts "Fixed bikes collected by van: #{@bikes_in_van}"
    puts "Number of bikes in station: #{@station.num_of_bikes}"
  end
end