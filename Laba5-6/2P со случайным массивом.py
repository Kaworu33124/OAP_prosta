import random

array = [random.randint(0, 10) for _ in range(10)]
print(f"Массив: {array}")

max_len = 1
current_len = 1

for i in range(1, len(array)):
    if array[i] <= array[i-1]:
        current_len += 1
    else:
        if current_len > max_len:
            max_len = current_len
        current_len = 1

if current_len > max_len:
    max_len = current_len

print(f"Максимальная длина невозрастающего участка: {max_len}")