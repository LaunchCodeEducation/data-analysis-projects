# Write your return_cost function here:
def return_cost(menu, item):
  pass

# Write your fanciest_flavor function here:


def main():
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

choice = 'cookies and cream'

if choice in flavors:
    cost = flavors[choice]
else: 
    cost = 0

print("The cost of", choice, "is", cost)

# Part 2

highest_cost = 0
fanciest = ""

for flavor in flavors:
    if flavors[flavor] > highest_cost:
        fanciest = flavor
        highest_cost = flavors[flavor]

print("The fanciest flavor is", fanciest, "and it costs", highest_cost)
