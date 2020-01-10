import numpy as np
import matplotlib.pyplot as plt

xvalues = [30, 32, 35, 38, 40, 42, 45, 48, 50, 52, 55, 58, 60, 62]
yvalues = [-1605.52402, -1605.72865, -1605.86489, -1605.90621, -1605.913722, -1605.91602, -1605.9189, -1605.9258, -1605.9325, -1605.9404, -1605.95274, -1605.9637, -1605.9698, -1605.9748]

plt.scatter(xvalues, yvalues)
plt.plot(xvalues, yvalues)
plt.xlabel('Plane wave energy cut-off')
plt.ylabel('Total energy')
plt.show()
