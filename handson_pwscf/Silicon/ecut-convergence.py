import numpy as np
import math
import matplotlib.pyplot as plt

xvalues = [12, 15, 18, 20, 22, 25, 28, 30]
yvalues = [-15.79449593, -15.82212312, -15.83267689, -15.83546695, -15.83746623, -15.83912656, -15.83981308, -15.84009479]
plt.scatter(xvalues, yvalues)
plt.plot(xvalues, yvalues)
plt.xlabel('Energy cutoff (Ry)')
plt.ylabel('Total energy (Ry)')
plt.show()
