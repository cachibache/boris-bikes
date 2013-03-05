class Control

  def initialize

    @people = []
    @@messages = []

    30.times { @people << Person.new }

    @station = Station.new
    20.times { @station << Bike.new }

    @van = Van.new
    @garage = Garage.new

    run
  end

  def run

    @people.each { |p| p.take_bike @station  if rand < 0.25 }
    @people.each { |p| @station << p.return_bike if p.has_bike? != nil && rand < 0.3 }

    Control.notify "Bikes at station: #{@station.bike_count}"
    Control.notify "Bikes in use: #{@station.bikes_in_use.to_s}"
    Control.notify "Broken bikes at station: #{@station.num_broken_bikes}"
    
    @van.collect_bikes @station if @station.num_broken_bikes > 0
    @van.deliver_bikes @garage  if @van.bike_count > 0
    @van.collect_bikes @garage if @garage.bike_count > 0
    @van.deliver_bikes @station  if @van.bike_count > 0

    report
  end

  def report
    puts '----------------'
    @@messages.each { |message| puts message }
    puts '----------------'
  end

  def self.notify message
    @@messages << message
  end
end