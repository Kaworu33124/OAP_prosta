print ('Введите строку')
a=str(input())
plus=a.count('+')
minus=a.count('-')
all=plus+minus # общее количество
zero = 0
for i in range(len(a) - 1):
    if a[i] in ['+', '-'] and a[i + 1] == '0':
        zero += 1
print("Количество '+' и '-' перед нулем:",zero)
print('Кол-во +',plus)
print('Кол-во -',minus)
print('Кол-во + и -',all)