engine_indicator_light = 'red blinking'
fuel_level = 21000
engine_temperature = 1200

# 5) Implement the following checks using if/else if/else statements:

# a) If fuel_level is above 20000 AND engine_temperature is at or below 2500, print "Full tank. Engines good."
#if fuel_level > 20000 and engine_temperature <= 2500:
 #  print("Full tank. Engines good.")
# b) If fuel_level is above 10000 AND engine_temperature is at or below 2500, print "Fuel level above 50%.  Engines good."
#if fuel_level > 10000 and engine_temperature <= 2500:
# print("Fuel level above 50%. Engines good.")
# c) If fuel_level is above 5000 AND engine_temperature is at or below 2500, print "Fuel level above 25%. Engines good."
 #if fuel_level > 5000 and engine_temperature <= 2500:
#print("Fuel level above 25%. Engines good.")
# d) If fuel_level is at or below 5000 OR engine_temperature is above 2500, print "Check fuel level. Engines running hot."
 #if fuel_level <= 5000 or engine_temperature > 2500:
#print("Check fuel level. Engines running hot.")
# e) If fuel_level is below 1000 OR engine_temperature is above 3500 OR engine_indicator_light is red blinking print "ENGINE FAILURE IMMINENT!" 
#if fuel_level < 1000 or engine_temperature > 3500 or engine_indicator_light == "red blinking":
# print("ENGINE FAILURE IMMINENT!")
# f) Otherwise, print "Fuel and engine status pending..." 
# print ("Fuel and engine status pending...")

# Code 5a - 5f here:

if fuel_level < 1000 or engine_temperature > 3500 or engine_indicator_light == "red blinking":
   print("ENGINE FAILURE IMMINENT!")
elif fuel_level <= 5000 or engine_temperature > 2500:
   print("Check fuel level. Engines running hot.")
elif fuel_level > 20000 and engine_temperature <= 2500:
   print("Full tank. Engines good.")
elif fuel_level > 10000 and engine_temperature <= 2500:
   print("Fuel level above 50%. Engines good.")
elif fuel_level > 5000 and engine_temperature <= 2500:
   print("Fuel level above 25%. Engines good.")
else:
   print("Fuel and engine status pending...")

#Answer-ENGINE FAILURE IMMINENT!


# 6) a) Create the variable command_override, and set it to be true or false. If command_override is false, then the shuttle should only launch if the fuel and engine check are OK. If command_override is true, then the shuttle will launch regardless of the fuel and engine status.
# Create variables
fuel_check = True      # True means fuel is OK, False means not OK
engine_check = True    # True means engine is OK, False means not OK
command_override = False   # Change this to True or False

if command_override:
    print("Command override active. Shuttle will launch!")
else:
    if fuel_check and engine_check:
        print("Fuel and engine are OK. Shuttle will launch!")
    else:
        print("Shuttle launch aborted. Fuel or engine check failed.")

#Answer-Fuel and engine are OK. Shuttle will launch!

# 6) b) Code the following if/else check:
# Variables
fuel_level = 25000               # Example value
engine_indicator_light = "green" # Example: "red blinking"
command_override = False         # Change to True or False

# Logic
# If fuel_level is above 20000 AND engine_indicator_light is NOT red blinking OR command_override is true print "Cleared to launch!"
#  Else print "Launch scrubbed!"

if (fuel_level > 20000 and engine_indicator_light != "red blinking") or command_override:
    print("Cleared to launch!")
else:
    print("Launch scrubbed!")

#Answer-Cleared to launch!



