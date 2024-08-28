my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.

latin = my_string[0:3]
split_string = my_string[3:10]
new_string = split_string+latin
print(new_string)

# Use a template literal to print the original and modified string in a descriptive phrase.

output = "The string {0} is changed to {1}"

print(output.format(my_string, new_string))

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.

split = int(input("Select a number between 0 and 10 to split the string:"))
latin = my_string[0:split]
split_string = my_string[split:10]
new_string = split_string+latin
print(new_string)

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.


split = int(input("Select a number between 0 and 10 to split the string:"))
if split > 10:
    split = 3
else:
    exit

latin = my_string[0:split]
split_string = my_string[split:10]
new_string = split_string+latin
print(new_string)