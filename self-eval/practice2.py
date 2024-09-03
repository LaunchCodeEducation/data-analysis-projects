def remove_hyphens(phone_number):
   without_hyphens = phone_number.replace('-', '')
   return without_hyphens

phone_number = "614-555-5555"
no_hyph_number = remove_hyphens('56-78')

print (remove_hyphens(phone_number))