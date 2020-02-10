import numpy as np
import matplotlib.pyplot as plt

datafile = open('ecut_convergence_data_2500.txt', 'r')
data = datafile.readlines()
xvalues = []
yvalues = []
for i in data:
    a = i.strip('\n')
    b = a.split()
    ecut = float(b[0])
    energy = float(b[1])
    xvalues.append(ecut)
    yvalues.append(energy)
datafile.close()

plt.scatter(xvalues, yvalues)
plt.plot(xvalues, yvalues)
plt.xlabel('Ecut')
plt.ylabel('Total energy')
plt.show()
