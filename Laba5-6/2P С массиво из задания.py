array = [6, 3, 4, 1, 2, 3, 5, 0, 2, 1] # масив с данными которые даны в задании
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