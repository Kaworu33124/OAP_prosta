import random

array = [random.randint(-22, 93) for _ in range(20)]
print(f"Массив: {array}")

count = 0
for i in range(len(array)):
    if (i + 1) % 2 != 0 and array[i] % 2 == 0:
        count += 1
print(f"Четные на нечетных местах: {count}")

product = 1
has_odd = False
for num in array:
    if num % 2 != 0:
        product *= num
        has_odd = True

if has_odd:
    print(f"Произведение нечетных: {product}")
else:
    print("Нечетных элементов нет")

a = int(input("Начальный индекс: "))
b = int(input("Конечный индекс: "))

sum_range = 0
for i in range(a, b + 1):
    if 0 <= i < len(array):
        sum_range += array[i]

print(f"Сумма элементов с индексами [{a}, {b}]: {sum_range}")