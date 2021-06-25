import math 

def get_parsed_inp(inp_str):
    prefix_res = "{0:008b}".format(int(inp_str[0:2], 16))
    prefix_res=str(prefix_res)+"000000000_"
    res = "{0:0020b}".format(int(inp_str[2:], 16))
    parsed_str = prefix_res+res[0:3] +"_"+res[3]+"_"+res[4]+"_"+res[5]+"_"+res[6]+"_"+res[7]+"_"+res[8]+"_"+res[9]+"_"+res[10]+"_"+res[11:16]+"_"+res[16]+"_"+res[17]+"_"+res[18]+"_"+res[19]
    suffix = "_0_0_0_0_0"
    return parsed_str+suffix

def get_vhdl_code(code):
    return "b\""+code+"\","


ini_string = "C020304"
# req_str = "11000000000000000_001_0_0_0_0_0_0_0_1_10000_0_1_0_0_0_0_0_0_0"
print("\nini_str  ",ini_string)
# print("requir   ",req_str)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))


# print("Test pass",req_str == parse_str)

ini_string = "C020224" 
# req_str = "11000000000000000_001_0_0_0_0_0_0_0_1_00010_0_1_0_0_0_0_0_0_0"
print("\nini_str  ",ini_string)
# print("requir   ",req_str)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))

# print("Test pass",req_str == parse_str)

ini_string = "C02000C" 
# req_str = "11000000000000000_001_0_0_0_0_0_0_0_0_00000_1_1_0_0_0_0_0_0_0"
print("\nini_str  ",ini_string)
# print("requir   ",req_str)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))

# print("Test pass",req_str == parse_str)

ini_string = "C020001" 
# req_str = "11000000000000000_001_0_0_0_0_0_0_0_0_00000_0_0_0_1_0_0_0_0_0"
print("\nini_str  ",ini_string)
# print("requir   ",req_str)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))

# print("Test pass",req_str == parse_str)

ini_string = "C020014" 
# req_str = "11000000000000000_001_0_0_0_0_0_0_0_0_00001_0_1_0_0_0_0_0_0_0"
print("\nini_str  ",ini_string)
# print("requir   ",req_str)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))

# print("Test pass",req_str == parse_str)


ini_string = "C0200E4" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))



ini_string = "C020024" 
parse_str = get_parsed_inp(ini_string)
print("\nini_str  ",ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))



ini_string = "1228002" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))

ini_string = "C020000" 
parse_str = get_parsed_inp(ini_string)
print("\nini_str  ",ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))

# x"C020024", --3 ADD -> add values from source and destination

ini_string = "C020024" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))


# x"169A002", --4 BXX -> branch conditionally to area
ini_string = "169A002" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))


# x"C020024", --5 ADD -> add values from source and destination
ini_string = "C020024" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))



ini_string = "C020024" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))


ini_string = "C10C002" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))


ini_string = "0030000" 
print("\nini_str  ",ini_string)
parse_str = get_parsed_inp(ini_string)
print("parsed\t\t",parse_str)
print("vhdl code\t",get_vhdl_code(parse_str))
