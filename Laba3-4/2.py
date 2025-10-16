d, c, t = 1, 1000, 0
while t <= 30000:
    t += c
    if t > 30000: 
        print(d)
        break
    d += 1
    c *= 2