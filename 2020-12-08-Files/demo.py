

# # [output ]
# # ["0r","1r"..."10r"]


# {
#     "bob"
# }

# init_list = []
# for output in range(11):
#     if output % 2 ==0:
#         init_list.append((str(output) + "r"))

# second_list = [str(output) + "r" for output in range(11) if output % 2 ==0]


# print(init_list)
# print(second_list)


# [12,12,12,12]
# third_list = [12 for output in range(20)]
# print(third_list)

# fourth_list = [2**output for output in range(1,21)]

# fifth_list = [2**(2**output) for output in range(5)]

# print(fifth_list)


# def add(num1, num2):
#     return (num1 + num2)**3 % 20 / 5

# add = lambda num1, num2: (num1 + num2)**3 % 20 / 5

# print([add(2,el) for el in range(20)])


# print(list(map(
#      lambda num1: (num1 + 2)**3 % 20 / 5,
#      [1,2,3,4,5,6]
# )))

# json.[0]["strId"]



def bob():
    print("hi")
    # return 1,2,3,

bob_result = bob()
print(bob_result)


# var1, var2, var3 = (1,2,3)

# var1, var2, var3 = bob()
# print(var1)
# print(var2)
# print(var3)


x = 'global value'
loc = [1,2,3,4]

def foo():
    print(loc)
    def bob(some_list):
        some_list.append(23)
    bob(loc)

foo()
print(loc)