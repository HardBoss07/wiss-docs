def bin_2_dec(bin_str):
    return int(bin_str, 2)

def hex_2_dec(hex_str):
    return int(hex_str, 16)

def oct_2_dec(oct_str):
    return int(oct_str, 8)

def duo_2_dec(duo_str):
    return int(duo_str, 12)

print(bin_2_dec('1011'))
print(bin_2_dec('0101'))
print(bin_2_dec('111000'))

# print(bin_2_dec('11011001'))
# print(hex_2_dec('A2'))
# print(oct_2_dec('705'))
# print(duo_2_dec('1A3'))

