print ('Введите строку')
a=str(input())
b=len(a)
if b > 6:
    print(a[:3],a[-3:])
else:
    print(a[:1]*b)