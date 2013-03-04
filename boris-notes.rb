# Boris bike exercise (Arguments & Methods)

# Classes: Bike, People, Station, Garage, Van and Control.  Report?

# Bike
# Arguments: bake name/id, status
# Methods: Report

# Station
# Arguments: id, capacity, bikes
# Methods: Bikes checked out/in  

# Garage
# Arguments: bike name/id, status, capacity
# Methods: Fix bikes, Accept Bike, Return Bike, Report

# Van
# Arguments: capacity, name/id, bikes
# Methods: Collect Bike, Deliver Bike, Report

# Person
# Arguments: id, bike name/id
# Methods: Rent Bike, Return Bike, Report

# Comtrol/Manager/Boris
# Arguments: bikes, stations, garages, vans, people
# Methods: Initialize everything, Run single iteration method, Create Report
#   Initialize - initialise all arguments
#   Run - ask people with no bike to take bike, ask people with bike to return bike,
#         mark some bikes as broken, ask vans to collect broken bikes, ask garage to fix bikes,
#         (asume bikes are fixed instantly), ask vans to collect fixed bikes.
#   Create Report - Bikes in sation, bikes hired, bikes broken, bikes fixed

# Report?  Maybe better within each class unless too unwielding

# Maybe use the info already in each class to make your claculations.
# e.g. we know how many bikes in the station, how many in van, 
# how many in garage and how many being ridden.



# ====> Notice that some classes have the same attributes.
#       That may mean it's better to create a common class or inherit.