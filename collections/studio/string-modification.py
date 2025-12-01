my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
to_be_moved= my_string[0:3]
my_string=my_string[3:] + to_be_moved
print(my_string)


# Use a template literal to print the original and modified string in a descriptive phrase.
my_o_string='LaunchCode'
to_be_moved=my_string[0:3]
my_string=my_o_string[3:]+to_be_moved
print(my_string)
print(my_o_string)


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.


# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
