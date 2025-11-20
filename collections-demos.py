#revenues = [2300,1800,2100,2500,1950,2750]
#revenues = print(revenues[1:4])
#pull out the revenues for the month 4,5 and 6 only

#revenues[2:4] = [9999,9999]
#print(revenues)
expenses = [106,400,333,150,240,370]
'''
for expense in expenses:
    print(f"Expense after tax: ${expense * 1.08: .2f}")
'''
'''
for i,expense in enumerate(expenses):
    print(f"Index {i}, value {expense}")
    expenses[i]
'''
'''
#Tuples- similar to list cant changed after created
employee =("ID-104","Alex Chen", "Data Analyst")
print(employee[1])

employee_as_list = list(employee)
employee_as_list[1] = "Alex Young"
'''
#Dictionaries- care about label 
'''
employee = {
    "id": "E102"
    "name":"Alex Chen "
    "role ": "data Analyst"
    "Salary": 72000
}
print(employee)
print(employee["role"])
'''

employees = {
    "E102": {
        "name": "Alex Chen",
        "role": "Data Analyst",
        "salary": 8200,
        "department": "research"
    },
    "E103":{
         "name": "Jorden Smith",
        "role": "Data Engg",
        "salary": 8800,
        "department": "infrastructure"
    } 
    
}
print(employees["E102"]["salary"])

employees["E102"]["salary"] = 10000
print(employees["E102"])

print(employees)

