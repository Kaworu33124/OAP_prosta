import math

x = -11
while x <= -1:
    if x < -9:
        y = 55 * math.cos(2 * x) - math.exp(1) * x
    elif -9 <= x < -3:
       
        if x > 0:
            y = math.log(x)
        else:
            y = math.log(-x) 
    else:
        y = math.sin(x) * 16 - 56
    
    print(f'x = {x:.1f}; y = {y:.1f}')
    x += 0.1