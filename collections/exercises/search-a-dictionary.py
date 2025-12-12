## Set a variable called choice to the flavor you want to search for.
flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

choice = 'saffron'

## Use an if statement to check if choice is in the flavors dictionary.
flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

choice = 'saffron'  

if choice in flavors:
    print(f"{choice} costs ${flavors[choice]:.2f}")
else:
    print(f"Sorry, {choice} is not available.")

## If it is, set another variable called cost to the value associated with choice.
if choice in flavors:
    cost = flavors[choice]
    print(f"The cost of {choice} is ${cost:.2f}")
else:
    print(f"Sorry, {choice} is not available.")

#Answer-The cost of saffron is $2.25

## If it isn’t, set cost to 0.
choice = 'bubblegum'  # example flavor to search

if choice in flavors:
    cost = flavors[choice]
else:
    cost = 0

print(f"The cost of {choice} is ${cost:.2f}")

#answer-The cost of bubblegum is $0.00

#Print the cost.
#The cost of bubblegum is $0.00


### Search a Dictionary Part 2:

## Initialize two variables: highest_cost to 0 and fanciest to an empty string.
highest_cost = 0

fanciest = ''

## Loop through the flavors dictionary using a for loop.

## For each flavor, check if its price is higher than highest_cost.
flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

# Initialize variables
highest_cost = 0
fanciest = ''

# Loop through the dictionary
for flavor, price in flavors.items():
    if price > highest_cost:
        highest_cost = price
        fanciest = flavor

print(f"The fanciest flavor is '{fanciest}' with a cost of ${highest_cost:.2f}")

## If it is, update fanciest to this flavor and highest_cost to its price.

## After the loop, print the most expensive flavor.
flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

# Initialize variables
highest_cost = 0
fanciest = ''


for flavor, price in flavors.items():
    # If this flavor is more expensive than current highest, update
    if price > highest_cost:
        highest_cost = price
        fanciest = flavor


print(f"The most expensive flavor is '{fanciest}' costing ${highest_cost:.2f}")