# Define three variables for the LaunchCode shuttle - one for the starting fuel level, another for the number of astronauts aboard, and the third for the altitude the shuttle reaches.

starting_fuel = 0
number_of_astronauts = 0
altitude = 0



# Exercise #1: Construct while loops to do the following:
  # a. Query the user for the starting fuel level. Validate that the user enters a positive, integer value greater than 5000 but less than 30000. 

while starting_fuel < 5000 or starting_fuel > 30000:
    starting_fuel = int(input("Enter starting fuel amount: "))



# b. Use a second loop to query the user for the number of astronauts (up to a maximum of 7). Validate the entry.
  
while number_of_astronauts < 1 or number_of_astronauts > 7:
    number_of_astronauts = int(input("Set number of astronauts: "))

  
# c. Use a final loop to monitor the fuel status and the altitude of the shuttle. Each iteration, decrease the fuel level by 100 units for each astronaut aboard. Also, increase the altitude by 50 kilometers.

while starting_fuel-100*number_of_astronauts >= 0:
    starting_fuel -= 100*number_of_astronauts
    altitude += 50

# Exercise #2: Print the result with the phrase, The shuttle gained an altitude of ___ km and has ___ kg of fuel left. Fill in the blanks with the altitude and fuel level values.

print("The shuttle gained an altitude of", altitude, "km and has", starting_fuel, "kg of fuel left.")

# If the altitude is 2000 km or higher, add “Orbit achieved!” Otherwise add, “Failed to reach orbit.”

if altitude >= 2000:
    print("Orbit achieved!")
else:
    print("Failed to reach orbit.")