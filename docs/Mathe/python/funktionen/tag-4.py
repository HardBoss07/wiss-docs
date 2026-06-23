import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-6, 6, 400)

y1 = 2 * x - 1
y2 = x**2 - 4

plt.plot(x, y1, label='$y = 2x - 1$', color='blue')
plt.plot(x, y2, label='$y = x^2 - 4$', color='orange')

plt.scatter([-1, 3], [-3, 5], color='red', zorder=5)
#plt.text(-1, -2.5, '$S_1(-1 \\mid -3)$', color='red', fontsize=10, ha='right')
#plt.text(3, 5.5, '$S_2(3 \\mid 5)$', color='red', fontsize=10, ha='left')

plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.grid(True, linestyle='--', alpha=0.6)

plt.gca().set_aspect('equal', adjustable='box')

plt.xlim(-6, 6)
plt.ylim(-6, 7)

plt.title('Quadratische und lineare Funktionen')
plt.xlabel('$x$')
plt.ylabel('$y$')
plt.legend()

plt.show()