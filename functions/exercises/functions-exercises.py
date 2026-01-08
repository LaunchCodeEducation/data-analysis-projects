# Part 1 A -- Make a Line

# Function to make a line of hashes

def make_line(size):
    return '#' * size  

# Test with size 5
print(make_line(5))

#Anser-#####

# Part 1 B -- Make a Square
# create a function using your make_line function to code a square

def make_line(size):
    return '#' * size


def make_square(size):
    for _ in range(size):
        print(make_line(size))


make_square(5)

#answer-
#####
#####
#####
#####
#####

# Part 1 C -- Make a Rectangle

def make_line(size):
    return '#' * size

def make_rectangle(width, height):
    for _ in range(height):
        print(make_line(width))

# Test the rectangle function
make_rectangle(7, 3)

#answer-
#######
#######
#######
# Part 2 A -- Make a Stairs

def make_line(size):
    return '#' * size


def make_stairs(steps):
    for i in range(1, steps + 1):
        print(make_line(i))


make_stairs(5)

#
##
###
####
#####


# Part 2 B -- Make Space-Line 


def make_space_line(spaces, hashes):
    return ' ' * spaces + '#' * hashes

# Test the function
print("'" + make_space_line(3, 5) + "'")

#Answer-'   #####'

# Part 2 C -- Make Isosceles Triangle

# Part 3 -- Make a Diamond
def make_space_line(spaces, hashes):
    return ' ' * spaces + '#' * hashes


def make_diamond(rows):
    # Top half (including middle row)
    for i in range(1, rows + 1):
        spaces = rows - i
        hashes = 2 * i - 1
        print(make_space_line(spaces, hashes))
    
    # Bottom half
    for i in range(rows - 1, 0, -1):
        spaces = rows - i
        hashes = 2 * i - 1
        print(make_space_line(spaces, hashes))


make_diamond(5)

#answer-
    #
   ###
  #####
 #######
#########
 #######
  #####
   ###
    #



