import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-6, 6, 400)

# y1 = 2*x - 1
# y2 = x**2 - 4
# 
# plt.plot(x, y1, label='$y = 2x - 1$', color='blue')
# plt.plot(x, y2, label='$y = x^2 - 4$', color='orange')

y3 = x + 1
y4 = 5
y5 = x**2
y6 = x**3
y7 = np.sin(x)

plt.plot(x, y3, label='$y = x + 1$', color='green')
#plt.plot(x, y4, label='$y = 5$', color='red')
plt.plot(x, y5, label='$y = x^2$', color='purple')
plt.plot(x, y6, label='$y = x^3$', color='brown')
plt.plot(x, y7, label='$y = \\sin(x)$', color='pink')

plt.xlim(-6, 6)
plt.ylim(-6, 7)

plt.show()