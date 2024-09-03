# practice shadow variables or parameters or whatever it's called
def remove_hyphens(phone_number):
   without_hyphens = phone_number.replace('-', '')
   return without_hyphens

phone_number = "614-555-5555"
no_hyph_number = remove_hyphens('56-78')

# print (remove_hyphens(phone_number))



# num less than 100 rather than total less than 100
def add_numbers_together(num):
   total = 0
   while num < 100:
      total += num
      num += 1
   return total

print(add_numbers_together(1))
   
# total less than 100. print() final total part of function
def add_numbers_together(num):
   total = 0
   while total < 100:
      total += num
      num += 1
   print(total)

add_numbers_together(1)

# total less than 100. print() ongoing total part of function.
def add_numbers_together(num):
   total = 0
   while total < 100:
      total += num
      num += 1
      print(total)

add_numbers_together(1)