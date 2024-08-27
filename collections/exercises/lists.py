# Create the adding_practice list with the following entry: 273.15

adding_practice = [273.15]

# Use the append method to add the number 42 and the string "hello" to the list. Add these new items one at a time.  Print the list after each step to confirm the changes.

adding_practice.append(42)
adding_practice.append("hello")

print(adding_practice)

# Use list concatenation to add these three items to the list all at once: [False, -4.6, '87'].

adding_practice += [False, -4.6, "87"]

# Use the cargo_hold list for the next set of exercises.
cargo_hold = ['oxygen tanks', 'space suits', 'parrot', 'instruction manual', 'meal packs', 'slinky', 'security blanket']

# Use bracket notation to replace 'slinky' in the list with 'space tether'. Print the list to confirm the change.

cargo_hold[-2] = "space tether"

print(cargo_hold)

# Remove the last item from the list with pop. Print the element removed and the updated list.

x = cargo_hold.pop(-1)
print (x)
print(cargo_hold)

# Remove the first item from the list with pop. Print the element removed and the updated list.

y = cargo_hold.pop(0)
print(y)
print(cargo_hold)

# append and insert require arguments inside the (). Add the items 1138 and ‘20 meters’ to the the list - the number at the start and the string at the end. Print the updated list to confirm the changes.

cargo_hold.insert(0, 1138)
cargo_hold.append('20 meters')
print(cargo_hold)

# Use the remove method to take the parrot out of cargo_hold, then print the updated list.

cargo_hold.remove("parrot")
print(cargo_hold)

# Use .format() to print the final list and its length. "The list ___ contains ___ items."

output = "The list {0} contains {1} items"

print(output.format(cargo_hold, len(cargo_hold)))