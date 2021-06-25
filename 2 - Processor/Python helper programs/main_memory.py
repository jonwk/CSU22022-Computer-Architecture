zero = "X\"00000000\","
for i in range(0,2**5):
    hex_val = "{:02x}".format(i).upper()
    print("\n-- module",hex_val)
    for j in range (4):
        print(zero, zero, zero, zero)
