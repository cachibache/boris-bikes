#!/usr/bin/env ruby

# Bicycles, docking stations, vans, central system to
# control the vans, people

# people would ride bikes
# vans would move them around
# a central station would control the vans
# repair facility would take the broken bikes and fix them
# repaired bikes would be delivered to stations
# report on the most/least used stations
# bikes would be taken out of service after 1000 rides

module BorisBike

  class Station

    attr_accessor :stations

    def initialize
      Station.create_station
    end

    def self.create_station
      @stations = []
      NUMBER_OF_STATIONS.times { |i| @stations << ["Station #{i + 1}", 
        "#{NUMBER_OF_BIKES / NUMBER_OF_STATIONS}"] }
    end
  end

  class Bike

  end

  class Person

    def initialize(person)
      @person = person
      Person.pick_a_station
    end

    def self.pick_a_station
      choose_station = rand(NUMBER_OF_STATIONS)
      @a_station = @stations[choose_station]
      @a_station.use_a_bike
    end

    def use_a_bike!
      bike = @a_station.last - 1
    end
  end

  class Boris

    def self.general_report
      #  Must refactor...
      puts "\n\n>>>>>>>>> BORIS BIKE REPORT >>>>>>>>>\n\n"
      puts "Number of Stations: #{NUMBER_OF_STATIONS}"
      puts "Number of bikes: #{NUMBER_OF_BIKES}\n\n"

      puts "STATION REPORTS\n\n"
      puts "STATION #{@station}: #{@bikes} bikes"
      puts "Bikes used: #{@bikes}"
      puts "Average miles per bike: #{@miles_per_bike}"
      puts "Number of bike rides: #{@bike_rides}"
      puts "Number of rides per bike: #{@rides_per_bike}"
      puts "Average ride duration: #{@ride_duration} mins\n\n\n"

      puts "MAINTENANCE REPORT\n\n"
      puts "STATION #{@station}"
      puts "Bikes taken for repair: #{@bikes_taken_for_repair}"
      puts "Bikes repaired: #{@bikes_repaired}"
      puts "Average repair duration: #{@average_repair_duration} days"
      puts "Bikes in repair: #{@bikes_in_repair}\n\n"

      puts ">>>>>>>>>>>>>>>> END >>>>>>>>>>>>>>>>\n\n"
    end
  end
end

# puts "\nHow many stations would you like to have?"
# number_of_stations = gets.chomp.to_i
# BorisBike::NUMBER_OF_STATIONS = number_of_stations

# puts "\nHow many bikes would you like to have?"
# number_of_bikes = gets.chomp.to_i
# BorisBike::NUMBER_OF_BIKES = number_of_bikes

NUMBER_OF_STATIONS = 5
NUMBER_OF_BIKES = 25 #Capacity!!!!!!!!!

BorisBike::Station.new


boris = BorisBike::Boris
boris.general_report


# BORIS BIKE REPORT

# Number of Stations: 2
# Number of Bikes: 25 bikes


# STATION REPORTS

# STATION 1: 10 bikes
# Bikes used: 8
# Average miles per bike: 19.4
# Number of bike rides: 56
# Number of rides per bike: 7
# Average ride duration: 30 mins

# STATION 2: 15 bikes
# Bikes used: 13
# Average miles per bike: 21.6
# Number of bike rides: 67
# Number of rides per bike: 5.15
# Average ride duration: 27.5 mins

# MAINTENANCE REPORT

# STATION 1
# Bikes taken for repair: 2
# Bikes repaired: 1
# Average repair duration: 5 days
# Bikes in repair: 1

# STATION 2
# Bikes taken for repair: 3
# Bikes repaired: 2
# Average repair duration: 6 days
# Bikes in repair: 1
