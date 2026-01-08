# We want to COMPLETELY reverse a list by flipping the order of the entries AND flipping the order of characters in each element.

# a) Define a 'reverse_characters' function. Give it one parameter, which will be the string to reverse.

def reverse_characters(string):
    return string[::-1]

print(reverse_characters("launchcode"))

#Answer=edochcnual

# b) Within the function, use the 'list' function to split a string into a list of individual characters

def reverse_characters(string):
    chars = list(string)   # convert the string into a list of characters
    return chars
print(reverse_characters("launchcode"))

#Answer- ['l', 'a', 'u', 'n', 'c', 'h', 'c', 'o', 'd', 'e']
# c) 'reverse' your new list.

def reverse_characters(string):
    chars = list(string)     # Step 1: convert to list of characters
    reversed_chars = chars[::-1]  # Step 2: reverse the list
    return reversed_chars
print(reverse_characters("launchcode"))

#Answer-['e', 'd', 'o', 'c', 'h', 'c', 'n', 'u', 'a', 'l']

# d) Use 'join' to create the reversed string and return that string from the function.

def reverse_characters(string):
    chars = list(string)          # convert to list
    reversed_chars = chars[::-1]  # reverse the list
    return ''.join(reversed_chars) 
    
print(reverse_characters("launch")) 
#Answer- hcnual

# e) Create a variable of type string to test your new function. 

test_string = "launchcode"

print(reverse_characters(test_string))

#Answer- edochcnual

#  f) Use 'print(reverse_characters(my_variable_name))'; to call the function and verify that it correctly reverses the characters in the string.

my_variable_name = "launchcode"

print(reverse_characters(my_variable_name))

#Answer-edochcnual

# g) Use method chaining to reduce the lines of code within the function.

def reverse_characters(string):
    return ''.join(reversed(list(string)))  # fixed 'reveresed' → 'reversed'

print(reverse_characters("launchcode")) 

#Answer- edochcnual

# 2) The 'split' method does not work on numbers, but we want the function to return a number with all the digits reversed (e.g. 1234 converts to 4321 and NOT the string "4321")
# a) Add an if statement to your reverse_characters function to check the typeof the parameter.

def reverse_characters(value):
    if isinstance(value, int):
        return int(str(value)[::-1])  # reverse digits and return number
    else:
        return value[::-1]    
print(reverse_characters("launchcode")) 
print(reverse_characters(1234)) 

# b - d) If type is ‘string’, return the reversed string as before. If type is ‘number’, convert the parameter to a string, reverse the characters, then convert it back into a number. Return the reversed number.

def reverse_characters(value):
    if isinstance(value, int):
        # Convert number to string, reverse using list and join, then back to int
        return int(''.join(list(str(value))[::-1]))
    else:
        # Convert string to list, reverse, join back to string
        return ''.join(list(value)[::-1])
print(reverse_characters("launchcode")) 
print(reverse_characters(1234)) 

# e) Be sure to print the result returned by the function to verify that your code works for both strings and numbers. Do this before moving on to the next steps.

def reverse_characters(value):
    if isinstance(value, int):
        # Convert number to string, reverse using list and join, then back to int
        return int(''.join(list(str(value))[::-1]))
    else:
        # Convert string to list, reverse, join back to string
        return ''.join(list(value)[::-1])
test_string = "code"
print(reverse_characters(test_string))

test_number = 12345
print(reverse_characters(test_number)) 

# 3) Create a new function with one parameter, which is the list we want to change. The function should:
# a) Define and initialize an empty list.

def modify_list(input_list):
    new_list = [] 

# b) Loop through the old list.

def modify_list(input_list):
    new_list = []               

    for item in input_list:     
        pass 

# c) For each element in the old list, call reverse_characters to flip the characters or digits.

# d) Add the reversed string (or number) to the list defined in part ‘a’.
# e) Return the final, reversed list.
# f) Be sure to print the results from each test case in order to verify your code.

def modify_list(input_list):
    new_list = []  # Step a: initialize empty list

    for item in input_list:  # Step b: loop through old list
        reversed_item = reverse_characters(item)  # Step c: reverse each element
        new_list.append(reversed_item)            # Step d: add to new list

    return new_list  # Step e: return the final reversed list

list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']

print(modify_list(list_test1))  # ['elppa', 'otatop', 'sdroW dezilatipaC']
print(modify_list(list_test2))  # [321, 7988, 24, 8611, 9035768]
print(modify_list(list_test3)) 

