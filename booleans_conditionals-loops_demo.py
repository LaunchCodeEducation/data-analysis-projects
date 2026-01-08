'''
age = 27
is_adult = age>18
print("is_adult")
'''
'''
mean_income = 58000
person_income = 64000
above_avg = person_income > mean_income
print(f"above average income?{above_avg}")

'''
# and: both must be true
# or: either must be true /at leasr one must be true
# not: takes the value and turns it to the opposite one

'''
score = 88
attendance = 0.92
passed = (score >= 70) and (attendance >= 0.9)
print("passed?",passed)

'''
'''
x = 10
y = 2
result = not x > 1 or y < 5
print(result)
'''
'''
temp = 72
print(not (temp < 60 and temp > 80))

'''
'''
rating = 4.9

#if rating >=4.8 , "excellent performer ",else if rating >= 4,"strong performer"
if rating < 4.0:
   print("Excellent performer")
elif rating >= 4.8:
   print ("strong performer")
else:
   print("needs improvement")
'''
'''
sales = 110000
region = "East"

if region == "East" and sales >= 100000:
   print("East region sales goal met!")

elif region == "West"  and sales >= 120000:
   print ("West region sales goal met!") 

elif region != "East" and region != "West":
   print ("unrecognized sales region ")
else:
   print("sales target not yet met")
'''
'''
word = "green"
for i in range(len(word)):
   print(f"Index {i} contsins ' {word[i]}'")

'''


