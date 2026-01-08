my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
my_string = "LaunchCode"
new_string = my_string[3:] + my_string[ :3]
print(new_string)


# Use a template literal to print the original and modified string in a descriptive phrase.

print(f"The original string is '{my_string}', and the modified string is '{new_string}'.")

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.

my_string = input("Enter a word: ")
num = int(input("How many letters to move? "))

new_string = my_string[num:] + my_string[:num]

print(f"Original: {my_string}")
print(f"Modified: {new_string}")

#Answer= Enter a word: launchcode
#How many letters to move? 3
#Original: launchcode
#Modified: nchcodelau

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
