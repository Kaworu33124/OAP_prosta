import random

arr1 = [random.randint(1, 100) for _ in range(8)]
arr2 = [random.randint(1, 100) for _ in range(8)]

print("Массив 1:", arr1)
print("Массив 2:", arr2)

idx1 = -1
for i, num in enumerate(arr1):
    if num % 5 == 0:
        idx1 = i
        break
            
idx2 = -1
for i, num in enumerate(arr2):
    if num % 5 == 0:
        idx2 = i
        break

if (idx1 != -1 and idx2 == -1) or (idx1 != -1 and idx2 != -1 and idx1 < idx2):
    max_val = max(arr1)
    max_idx = arr1.index(max_val)
    arr1[max_idx] = 0
    min_val = min(arr2)
    min_idx = arr2.index(min_val)
    for i in range(min_idx + 1, len(arr2)):
            arr2[i] *= 2
else:
    max_val = max(arr2)
    max_idx = arr2.index(max_val)
    arr2[max_idx] = 0
    min_val = min(arr1)
    min_idx = arr1.index(min_val)
    for i in range(min_idx + 1, len(arr1)):
            arr1[i] *= 2

print("Массив 1:", arr1)
print("Массив 2:", arr2)