# look up recursive function patterns

def latitudes(size):
    latitudes = []
    for x in range(size):
        random_lat = random.randint(-90, 90) + random.random()
        latitudes.append(random_lat)
    return latitudes
# Call the function with 1500.
%timeit latitudes(1500)

for i in range(1500)

for i in some_list

i = 0
while i < len(some_list):
    i+=1