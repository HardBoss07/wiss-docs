print(f"{128:x}")
print(f"{395:x}")
print(int('39C', 16))

def dec_to_base(n: int, base: int) -> str:
    if n < 0 or base < 2 or base > 36:
        raise ValueError("n must be non-negative and base must be between 2 and 36")
    if n == 0:
        return "0"

    digits = "0123456789abcdefghijklmnopqrstuvwxyz"
    result = []

    while n > 0:
        result.append(digits[n % base])
        n //= base

    return "".join(reversed(result))

print(dec_to_base(388, 16))

import numpy as np

def dec_to_baseN2(n, base):
    return np.base_repr(n, base).lower()

print(dec_to_baseN2(388, 16))

def dec_to_base3(n, b):
    digits = "0123456789abcdefghijklmnopqrstuvwxyz"
    return dec_to_base3(n // b, b) + digits[n % b] if n >= b else digits[n]

print(dec_to_base3(388, 16))
