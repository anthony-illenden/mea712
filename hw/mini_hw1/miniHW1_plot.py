# Read in 1D output and make a plot

# The file to be read should have a two line header like:
# nx dx 
# 21 100.0 
# The file is expected to be written as follows:
# space delimited values
# each line is all x values at one time

# packages to be used
import numpy as np
import matplotlib.pyplot as plt

# open files for reading
f = open('output.txt', 'r')

# get key coordinate info from file headers
headstr = f.readline()
dimstr = f.readline()
dimlist = dimstr.split()
nx = int(dimlist[1])
dx = float(dimlist[2])

# read output from file then close it
varread = np.loadtxt(f, delimiter=' ')
f.close()

# define the coordinate space
x = np.linspace(0, dx*(nx-1), nx)

# open a figure
fig, axs = plt.subplots()

# plot the data
axs.plot(x,varread)

# tighten up the x-axis and white space
axs.set_xlim(x[0],x[nx-1])
plt.tight_layout()

# label the plot appropriately
plt.xlabel('x-distance (m)')
plt.ylabel('$\psi$ (unitless)')
plt.title(r'Illenden - MiniHW1')

# finish up
plt.show()
plt.savefig('miniHW1_output_plot.png')