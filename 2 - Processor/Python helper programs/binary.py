def decimalToBinary(n):  
    return format(n, '06b').replace("0b", "") 

for i in range(0,33):
    print(decimalToBinary(i))

