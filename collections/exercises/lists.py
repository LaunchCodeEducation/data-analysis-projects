# Create the adding_practice list with the following entry: 273.15

adding_practice = [273.15]

# Use the append method to add the number 42 and the string "hello" to the list. Add these new items one at a time.  Print the list after each step to confirm the changes.

adding_practice = [273.15]
adding_practice.append(42)
adding_practice.append("hello")
print(adding_practice)
#Answer-[273.15, 42, 'hello']

# Use list concatenation to add these three items to the list all at once: [False, -4.6, '87'].

adding_practice.extend([False, -4.6, '87'])
print(adding_practice)
#Answer-[273.15, 42, 'hello', False, -4.6, '87']


# Use the cargo_hold list for the next set of exercises.
#cargo_hold = ['oxygen tanks', 'space suits', 'parrot', 'instruction manual', 'meal packs', 'slinky', 'security blanket']

# Use bracket notation to replace 'slinky' in the list with 'space tether'. Print the list to confirm the change.

cargo_hold = ['oxygen tanks', 'space suits', 'parrot', 'instruction manual', 'meal packs', 'slinky', 'security blanket']
cargo_hold[5] = 'space tether'

print(cargo_hold)
#Answer-['oxygen tanks', 'space suits', 'parrot', 'instruction manual', 'meal packs', 'space tether', 'security blanket'] 

# Remove the last item from the list with pop. Print the element removed and the updated list.

cargo_hold.pop()
print(cargo_hold)
#Answer-['oxygen tanks', 'space suits', 'parrot', 'instruction manual', 'meal packs', 'space tether']


# Remove the first item from the list with pop. Print the element removed and the updated list.

cargo_hold = ['oxygen tanks', 'space suits', 'parrot', 
              'instruction manual', 'meal packs', 
              'slinky', 'security blanket']

# Remove the first item
removed_item = cargo_hold.pop(0)

print("Removed item:", removed_item)
print("Updated list:", cargo_hold)

#Answer-Removed item: oxygen tanks
#Updated list: ['space suits', 'parrot', 'instruction manual', 'meal packs', 'slinky', 'security blanket']

# append and insert require arguments inside the (). Add the items 1138 and ‘20 meters’ to the the list - the number at the start and the string at the end. Print the updated list to confirm the changes.
cargo_hold = ['oxygen tanks', 'space suits', 'parrot', 
              'instruction manual', 'meal packs', 
              'slinky', 'security blanket']

# Add 1138 at the start
cargo_hold.insert(0, 1138)

# Add '20 meters' at the end
cargo_hold.append('20 meters')

print(cargo_hold)

#Answer-[1138, 'oxygen tanks', 'space suits', 'parrot', 'instruction manual', 'meal packs', 'slinky', 'security blanket', '20 meters']

# Use the remove method to take the parrot out of cargo_hold, then print the updated list.
cargo_hold = ['oxygen tanks', 'space suits', 'parrot', 
              'instruction manual', 'meal packs', 
              'slinky', 'security blanket']
cargo_hold.remove('parrot')
print(cargo_hold)

#Answer-['oxygen tanks', 'space suits', 'instruction manual', 'meal packs', 'slinky', 'security blanket']

# Use .format() to print the final list and its length. "The list ___ contains ___ items."
cargo_hold = ['oxygen tanks', 'space suits', 'instruction manual', 'meal packs', 'slinky', 'security blanket']

print("The list {} contains {} items.".format(cargo_hold, len(cargo_hold)))
#answer-The list ['oxygen tanks', 'space suits', 'instruction manual', 'meal packs', 'slinky', 'security blanket'] contains 6 items.