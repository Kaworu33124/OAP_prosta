import math

x = float(input('Введите x: '))

if x < -9:
    y = 55 * math.cos(2 * x) - math.exp(1) * x
elif -9 <= x < -3:
    y = math.log(x)
else:
    y = math.sin(x) * 16 - 56

print(f'x = {x:.4f}, y = {y:.4f}')