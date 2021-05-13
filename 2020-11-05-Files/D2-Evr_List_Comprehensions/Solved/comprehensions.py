# word = "halibut"

# # Loop through each letter in the string
# # and push to an array
# letters = []
# for letter in word:
#     letters.append(letter)

# print(letters)


# letters = [letter +  " is the next letter" for letter in word]

# print(letters)

# # # We can manipulate each element as we go
# capital_letters = []
# for letter in word:
#     capital_letters.append(letter.upper())

# print(capital_letters)

# capital_letters = [letter.upper() for letter in word]

# print(capital_letters)

# # # We can also add conditional logic (if statements) to a list comprehension
# july_temperatures = [87, 85, 92, 79, 106]
# hot_days = []
# for temperature in july_temperatures:
#     if temperature > 90:
#         hot_days.append(temperature)
# print(hot_days)

# # # List Comprehension with conditional
# hot_days = [temp for temp in july_temperatures if temp > 90]
# print(hot_days)


ratings = [
    {
        "food": "milkshake",
        "rating": 1
    },
    {
        "food": "hamburger",
        "rating": 3
    },
    {
        "food": "juice",
        "rating": 2.5
    },
    {
        "food": "juice",
        "rating": -100
    },
    {
        "food": "salad",
        "rating": 5
    }
]

# def average(ratings_list):
#     total = 0
#     length = len(ratings_list)
#     for rating in ratings_list:
#         total += rating["rating"]
#     return total / length
average = ratings.average()
good_foods = [item["food"] for item in ratings if item["rating"] > average ]

print(good_foods)