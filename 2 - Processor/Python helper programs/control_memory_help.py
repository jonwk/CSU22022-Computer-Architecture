main_str = "\n-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|\n-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|\n-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|"
# print(main_str)
zeros = "   b\"00000000000000000_000_0_0_0_0_0_0_0_0_00000_0_0_0_0_0_0_0_0_0\", --"

for i in range(0,2**8):
    hex_val = "{:02x}".format(i).upper()
    if hex_val[1] == '0':
        print(main_str)
    print(zeros,hex_val)