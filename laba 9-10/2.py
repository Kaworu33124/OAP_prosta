import random

matrix = []
for i in range(8):
    row = []
    for j in range(8):
        row.append(random.randint(0, 10))
    matrix.append(row)

for row in matrix:
    print(row)

result = []
for row in matrix:
    found_pair = False
    for i in range(7): 
        if row[i] + row[i+1] == 7:
            found_pair = True
            break
    if found_pair:
        result.append(1)
    else:
        result.append(-1)

print("\nРезультат:", result)   