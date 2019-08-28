import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

xvalues = [12, 14, 16, 18, 20, 22, 26, 30, 32]
yvalues = [-15.79449593, -15.81640517, -15.82676464, -15.83267689, -15.83546695, -15.83746623, -15.83940319, -15.84009479, -15.84034460]

plt.scatter(xvalues, yvalues)
plt.plot(xvalues, yvalues)
plt.savefig('ecut-convergence.png', dpi = 600)
