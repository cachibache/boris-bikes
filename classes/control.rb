class Control

  def initialize

    @people = []
    @@messages = []
    @stations = []

    100.times { @people << Person.new }

    2.times do
      @station = Station.new
      20.times { @station << Bike.new }
      @stations << @station
    end

    @van = Van.new
    @garage = Garage.new

    run
  end

  def run

    @people.each { |p| p.take_bike @stations[rand(2)]  if rand < 0.25 }

    @people.each do |p| 
      if p.has_bike? != nil && rand < 0.3
        @stations.each do |station|
          station << p.return_bike
          break if p.has_bike? == nil
        end
      end
    end

    @stations.each do |station|
      Control.notify "Station: #{station.object_id}"
      Control.notify "Bikes at station: #{station.bike_count}"
      Control.notify "Bikes in use: #{station.bikes_in_use.to_s}"
      Control.notify "Broken bikes at station: #{station.num_broken_bikes}\n\n"

      @van.collect_bikes station  if station.num_broken_bikes > 0
      @van.deliver_bikes @garage  if @van.bike_count > 0
      @van.collect_bikes @garage  if @garage.bike_count > 0
      @van.deliver_bikes station  if @van.bike_count > 0

      Control.notify "\n\n"
    end

    report
  end

  def self.notify message
    @@messages << message
  end

  private

  def report
    puts "\n"
    @@messages.each { |message| puts message }
    puts "\n"
  end
end