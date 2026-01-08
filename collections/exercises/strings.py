# ---- Exercise 2: Bracket Notation Basics ----
# 1. Print a slice of the first 12 characters from 'text'.

text = 'Strings_are_sequences_of_characters.'
word = 'tomato'
print(text[:12])


# 2. Print a slice of the last 12 characters from 'text'. You should NOT have to count the index values yourself!
text = 'Strings_are_sequences_of_characters.'
print(text[-12:])
for i in range(len(word)-1, -1, -1):
    reversed_word += word[i]

# combine original and reversed
combined = word + reversed_word

print(combined)
print(f"{word} | {reversed_word}") 
# 3. Print a slice of the middle 12 characters from 'text'.

text = 'Strings_are_sequences_of_characters.'
print(text[12:24])

# ---- Exercise 3: Looping Through a String ----

# Use index values to loop backwards through 'word'.

# 1. Print 1 letter per line.

word = 'tomato'
for i in range(len(word)-1, -1, -1):  # start from last index to 0
    print(word[i])

# 2. Refactor the code to use the accumulator pattern to build up and print the reversed string. For example, if given 'good', print 'doog' on one line.

word = 'tomato'
reversed_word = ''  # accumulator
for i in range(len(word)-1, -1, -1):
    reversed_word += word[i]  # add each letter to the accumulator

print(reversed_word)

# 3. Refactor the code to print a combination of the original and reversed string. For example, given 'tomato', print 'tomatootamot'. (If you want to be fancy, print 'tomato | otamot').
word = 'tomato'
reversed_word = ''


#Answer-otamot
#tomatootamot