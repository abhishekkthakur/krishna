import numpy as np
import math
import matplotlib.pyplot as plt

xvalues = [9.8, 9.9, 10.0, 10.1, 10.2, 10.3, 10.4, 10.5, 10.6, 10.7]
yvalues = [-15.83706524, -15.84334818, -15.84770895, -15.85028961, -15.85121712, -15.85065978, -15.84873485, -15.84558105, -15.84131398, -15.83605062]
plt.scatter(xvalues, yvalues)
plt.plot(xvalues, yvalues)
plt.xlabel('Cell dimension (Bohr radius)')
plt.ylabel('Total energy (Ry)')
plt.show()
