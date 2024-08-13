# 1. Declare and assign the variables here:

shuttle_name = 'Determination'
shuttle_mph = 17500
mars_km = 225000000
moon_km = 384400
mi_per_km = 0.621


# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(shuttle_name))
print(type(shuttle_mph))
print(type(mars_km))
print(type(moon_km))
print(type(mi_per_km))
# Code your solution to exercises 3 and 4 here:
mars_mi = mars_km*mi_per_km
mars_hrs = mars_mi/shuttle_mph
mars_days = mars_hrs/24
mars_days = str(mars_days)
print (shuttle_name + " will take " + mars_days + " days to reach Mars.")
# Code your solution to exercise 5 here
moon_mi = moon_km*mi_per_km
moon_hrs = moon_mi/shuttle_mph
moon_days = moon_hrs/24
moon_days = str(moon_days)
print (shuttle_name + " will take " + moon_days + " days to reach the Moon.")