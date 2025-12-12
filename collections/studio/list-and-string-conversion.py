proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

for s in strings:
    if "," in s:
        print("Comma-separated:", s)
    elif ";" in s:
        print("Semicolon-separated:", s)
    else:
        print("Space-separated:", s)

# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.
text = "3,6,9,12"

if "," in text:
    parts = text.split(",")
    parts.reverse()
    new_text = ",".join(parts)
    print(new_text)

#Answer- 12,9,6,3


# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.
text = "A;C;M;E"

if ";" in text:
    # Split the string into a list
    items = text.split(";")
    # Sort the list alphabetically
    items.sort()
    # Join it into a comma-separated string
    new_text = ",".join(items)
    print(new_text)


# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.

text = "space delimited string"

if " " in text:
    # Split the string into a list
    words = text.split(" ")
    # Sort the list in reverse alphabetical order
    words.sort(reverse=True)
    # Join it back into a space-separated string
    new_text = " ".join(words)
    print(new_text)

# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
text = "Comma-spaces, might, require, typing, caution"

# Split by comma, remove spaces, reverse, join back
items = [x.strip() for x in text.split(",")]
items.reverse()
new_text = ",".join(items)

print(new_text)