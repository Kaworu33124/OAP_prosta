import random

array = [random.randint(-50, 50) for _ in range(20)]
print(f"Исходный массив: {array}")

for i in range(len(array)-1, -1, -1):
    if array[i] > 0:
        array.pop(i)
        break

print(f"После удаления последнего положительного: {array}")

if array:
    max_index = array.index(max(array))
    array.pop(max_index)
    print(f"После удаления наибольшего: {array}")
else:
    print("Массив пуст")