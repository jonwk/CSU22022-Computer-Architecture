z_str=""

for i in range(0,32):
    z_str += "muxFOUT("+str(i)+") or "

print(z_str[:-4])