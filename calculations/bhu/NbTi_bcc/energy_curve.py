import numpy as np
import matplotlib.pyplot as plt

xvalues = []
yvalues = []
f = open('mypredstr.file', 'r')
data = f.readlines()
for i in data:
	a = i.strip('\n')
	b = a.split()
	composition = float(b[0])
	energy = float(b[2])
	xvalues.append(composition)
	yvalues.append(energy)
f.close()
plt.scatter(xvalues, yvalues, color = 'red', marker = '+', label = 'Predicted structure')


xvalues = []
yvalues = []
f = open('myfit.file', 'r')
data = f.readlines()
for i in data:
	a = i.strip('\n')
	b = a.split()
	composition = float(b[0])
	energy = float(b[2])
	xvalues.append(composition)
	yvalues.append(energy)
f.close()
plt.scatter(xvalues, yvalues, color = 'green', marker = 'x', label = 'Known structure')

xvalues = []
yvalues = []
f = open('mygs.file', 'r')
data = f.readlines()
for i in data:
	a = i.strip('\n')
	b = a.split()
	composition = float(b[0])
	energy = float(b[2])
	xvalues.append(composition)
	yvalues.append(energy)
f.close()
plt.plot(xvalues, yvalues, ls = '--')
plt.scatter(xvalues, yvalues, color = 'blue', marker = '*', label = 'Known ground state')
#plt.plot(xvalues, yvalues, ls = '--')




plt.xlabel('Composition')
plt.ylabel('Formation energy')
plt.xlim([0, 1])
plt.ylim([-0.005, 0.1])
plt.legend()
plt.grid()
plt.show()
#plt.savefig('NbTi_bcc_convex_hull.png', dpi = 600)
