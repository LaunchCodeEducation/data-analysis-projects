food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.

food_list = sorted(food.split(","))
equipment_list = sorted(equipment.split(","))
pets_list = sorted(pets.split(","))
sleep_aids_list = sorted(sleep_aids.split(","))

print("Food:", food_list)
print("Equipment:", equipment_list)
print("Pets:", pets_list)
print("Sleep Aids:", sleep_aids_list)

#Answer- Food: ['chocolate', 'meal packs', 'snacks', 'water bottles']
#Equipment: ['jet packs', 'space suits', 'thermal detonators', 'tool belts']
#Pets: ['alien eggs', 'cats', 'moose', 'parrots']
#Sleep Aids: ['alarm clocks', 'blankets', 'eyepatches', 'pillows']

# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.
food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

cargo_hold = []

# Add cabinet lists
cargo_hold.append(food_list)
cargo_hold.append(equipment_list)
cargo_hold.append(pets_list)
cargo_hold.append(sleep_aids_list)

# Print cargo_hold to verify
print(cargo_hold)


# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.

cabinet_index = int(input("Select a cabinet (0 - 3): "))
print("You selected cabinet:", cabinet_index, "->", cargo_hold[cabinet_index])

#Answer-Select a cabinet (0 - 3): 3
#You selected cabinet: 3 -> ['alarm clocks', 'blankets', 'eyepatches', 'pillows']

# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
cabinet_index = int(input("Select a cabinet (0 - 3): "))

# Check if the selection is valid

if 0 <= cabinet_index <= 3:
    print("Cabinet {} contains: {}".format(cabinet_index, cargo_hold[cabinet_index]))
else:
    print("Error: Invalid cabinet number. Please enter a number between 0 and 3.")


# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”
cabinet_index = int(input("Select a cabinet (0 - 3): "))
item = input("Enter an item to search for: ").lower()

if 0 <= cabinet_index <= 3:
    cabinet = cargo_hold[cabinet_index]
    if item in [i.lower() for i in cabinet]:
        print(f"Cabinet {cabinet_index} DOES contain {item}.")
    else:
        print(f"Cabinet {cabinet_index} DOES NOT contain {item}.")
else:
    print("Error: Invalid cabinet number. Please enter 0 - 3.")