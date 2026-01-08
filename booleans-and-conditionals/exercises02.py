engine_indicator_light = "red blinking"
space_suits_on = True
shuttle_cabin_ready = True
crew_status = space_suits_on and shuttle_cabin_ready
computer_status_code = 200
shuttle_speed = 15000

# 3) Write conditional expressions to satisfy the following safety rules:

# a) If crew_status is true, print "Crew Ready" else print "Crew Not Ready".
if crew_status:
   print("Crew Ready")
else:
   print("Crew Not Ready")
# Answer-Crew Ready

# b) If computer_status_code is 200, print "Please stand by. Computer is rebooting." Else if computer_status_code is 400, print "Success! Computer online." Else print "ALERT: Computer offline!"

if computer_status_code==200:
   print("Please stand by.Computer is rebooting.")
elif computer_status_code == 400: 
   print ("Success! Computer online.")
else:
    print("ALERT: Computer offline!")

#Answer- Please stand by.Computer is rebooting.

# c) If shuttle_speed is > 17,500, print "ALERT: Escape velocity reached!" Else if shuttle_speed is < 8000, print "ALERT: Cannot maintain orbit!" Else print "Stable speed".

if shuttle_speed  > 17500:
    print("ALERT: Escape velocity reached!")
elif shuttle_speed  < 8000 :
    print("ALERT: Cannot maintain orbit!")
else :
    print("Stable speed.")   

#Answer-Stable speed.

# 4) PREDICT: Do the code blocks shown in the Section D produce the same result?
if crew_status and computer_status_code == 200 and space_suits_on:
   print("all systems go")
else:
   print("WARNING. Not ready")

if crew_status != True or computer_status_code != 200 or not(space_suits_on):
   print("WARNING. Not ready")
else:
   print("all systems go")   

# print("Yes" or "No")

#Answer- Yes  