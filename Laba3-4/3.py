a1, a2, a3, a4 = map(float, [input("A1: "), input("A2: "), input("A3: "), input("A4: ")])
n = int(input("Количетвово точек: "))

a = sorted([a1, a2, a3, a4])

c1, c2, c3 = 0, 0, 0

for i in range(n):
    p = float(input(f"Точка {i+1}: "))
    if a[0] <= p <= a[1]:
        c1 += 1
    elif a[1] <= p <= a[2]:
        c2 += 1
    elif a[2] <= p <= a[3]:
        c3 += 1

print(f"\n[{a[0]}-{a[1]}]: {c1}")
print(f"[{a[1]}-{a[2]}]: {c2}")
print(f"[{a[2]}-{a[3]}]: {c3}")