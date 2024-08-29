food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.

food = food.split(",")
food.sort()
print(food)
equipment = equipment.split(",")
equipment.sort()
print(equipment)
pets = pets.split(",")
pets.sort()
print(pets)
sleep_aids = sleep_aids.split(",")
sleep_aids.sort()
print(sleep_aids)


# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.

cargo_hold = [food, equipment, pets, sleep_aids]

print(cargo_hold)

# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.
# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”

cabinetnum = int((input("Select a cabinet number 0-3:")))
cabinetitem = input("Enter item you wish to search for:")



if cabinetnum < 0 or cabinetnum > 3:
    cabinetnum = int(input(("ERROR! Invalid cabinet number.")))
else:
    exit

if cabinetitem in cargo_hold[cabinetnum]:
    print("Cabinet", cabinetnum, "DOES contain", cabinetitem)
else:
    print("Cabinet", cabinetnum, "DOES NOT contain", cabinetitem)



