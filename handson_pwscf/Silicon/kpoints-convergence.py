import numpy as np
import math
import matplotlib.pyplot as plt

xvalues = [2, 4, 6, 8, 10, 12]
yvalues = [-15.83912656, -15.85121712, -15.85140758, -15.85141451, -15.85141433, -15.85141658]
plt.scatter(xvalues, yvalues)
plt.plot(xvalues, yvalues)
plt.xlabel('Kpoints')
plt.ylabel('Total energy (Ry)')
plt.show()
