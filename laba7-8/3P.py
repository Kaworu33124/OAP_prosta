import re
print ('Введите строку')
a=str(input())
b=a.strip()
c = re.sub(r'\s+', ' ', b)
print(c)