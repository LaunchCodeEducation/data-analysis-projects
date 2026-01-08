# Exercise #1: Construct for loops that accomplish the following tasks:
    # a. Print the numbers 0 - 20, one number per line.
#for i in range(21):
#    print(i)
#Answer- 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21

    # b. Print only the ODD values from 3 - 29, one number per line.

for i in range(3,30):
 if i % 2!= 0:
    print(i)
#Answer- 3,5,7,9,11,13,15,17,19,21,23,25,27,29

# c. Print the EVEN numbers 12 to -14 in descending order, one number per line.

for number in range(12,-15,-2):
   print(number)

# d. Challenge - Print the numbers 50 - 20 in descending order, but only if the numbers are multiples of 3. (Your code should work even if you replace 50 or 20 with other numbers).
for number in range(50,19,-1):
    if number % 3==0:
        print(number)


