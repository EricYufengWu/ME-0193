import math, cmath, time
from sympy import var, solve, log, I, sin, cos, tan
import matplotlib as mpl
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
import matplotlib.pyplot as plt

# Defining Parameters
L1 = 54
L2 = 150
L3 = 150

def solve_2D(x,z):
    # start = time.time()
    try:
        L4 = math.sqrt(x * x + z * z)
        theta_2_1 = math.atan(x / z) + math.acos(L4 / (2 * L2)) + math.pi / 2
        theta_3_1 = math.pi - math.acos((L2 * L2 + L3*L3 - L4 * L4) / (2 * L2 * L3))
        theta_2_2 = math.atan(x / z) - math.acos(L4 / (2 * L2)) + math.pi /2
        theta_3_2 = -(math.pi - math.acos((L2 * L2 + L3 * L3 - L4 * L4) / (2 * L2 * L3)))
        # print(time.time() - start)
        return [theta_2_1 * 180 / math.pi, theta_3_1 * 180 / math.pi], [theta_2_2 * 180 / math.pi, theta_3_2 * 180 / math.pi]
    except:
        return None, None

def fast_solve_3D(coord):
    x = coord[0]
    y = coord[1]
    z = coord[2]
    # s1 = -cmath.log(-(- (-(x + y)*(x - y))**(1/2) + z*1j)/(L1 - (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    # s2 = -cmath.log(-(- (-(x + y)*(x - y))**(1/2) + z*1j)/(L1 + (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    # s3 = -cmath.log(-((-(x + y)*(x - y))**(1/2) + z*1j)/(L1 - (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    # s4 = -cmath.log(-((-(x + y)*(x - y))**(1/2) + z*1j)/(L1 + (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    if y <= 0:
        beta = -cmath.log(-(- (-(x + y)*(x - y))**(1/2) + z*1j)/(L1 + (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    else:
        beta = -cmath.log(-((-(x + y)*(x - y))**(1/2) + z*1j)/(L1 + (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    beta = beta.real
    z_0 = z / math.cos(beta) + L1 * math.tan(beta)
    if z_0 < -300 or abs(beta) >= math.pi / 2:
        z_0 = -300
    # print("beta = {}, x = {}, z0 = {}".format(beta, x, z_0))
    solve_1, solve_2 = solve_2D(x, z_0)
    theta_1 = (math.pi / 2 + beta) * 180 / math.pi
    solve_1.insert(0, theta_1)
    solve_2.insert(0, theta_1)
    return [round(s1, 3) for s1 in  solve_1], [round(s2, 3) for s2 in solve_2]

def draw_leg(coord, thetas = [45, 45, 45]):
    theta_1 = thetas[0] * math.pi / 180
    theta_2 = thetas[1] * math.pi / 180
    theta_3 = thetas[2] * math.pi / 180
    beta = theta_1 - math.pi / 2
    x0, y0, z0 = 0, 0 , 0
    x1, y1, z1 = 0, -L1 * math.cos(beta), -L1 * math.sin(beta)
    x3, y3, z3 = coord[0], coord[1], coord[2]
    x2, y2, z2 = L2 * math.cos(theta_2), (y1 + y3) / 2, (-L2 * math.sin(theta_2) + L1 * math.tan(beta)) * math.cos(beta)
    print(theta_2, x2, z2)
    x = np.asarray([x0, x1, x2, x3])
    y = np.asarray([y0, y1, y2, y3])
    z = np.asarray([z0, z1, z2, z3])
    return x, y, z

sweep_rez = 10

x_sweep = np.linspace(-50, 50, sweep_rez)
y_sweep = np.linspace(-104, 4, sweep_rez)
z_sweep = np.linspace(-250, -150, sweep_rez)

path_1 = np.stack((np.asarray([-50 for i in range(sweep_rez)]), np.asarray([-104 for i in range(sweep_rez)]), z_sweep), axis = -1)
path_2 = np.stack((x_sweep, np.asarray([-104 for i in range(sweep_rez)]), np.asarray([-150 for i in range(sweep_rez)])), axis = -1)
path_3 = np.stack((np.asarray([50 for i in range(sweep_rez)]), np.asarray([-104 for i in range(sweep_rez)]), np.flip(z_sweep)), axis = -1)
path_4 = np.stack((np.flip(x_sweep), np.asarray([-104 for i in range(sweep_rez)]), np.asarray([-250 for i in range(sweep_rez)])), axis = -1)
paths = [path_1, path_2, path_3, path_4]
    
plt.ion()
fig = plt.figure()
ax = fig.gca(projection='3d')

ax.set_xticks([-300,-250, -200, -150, -100, -50, 0, 50, 100])
ax.set_yticks([-300,-250, -200, -150, -100, -50, 0, 50, 100])
ax.set_zticks([-300,-250, -200, -150, -100, -50, 0, 50, 100])
ax.axes.set_xlim3d(left=-300, right=100) 
ax.axes.set_ylim3d(bottom=-300, top=100) 
ax.axes.set_zlim3d(bottom=-300, top=100) 

solve = fast_solve_3D(path_1[0])
# data = [0,0]
# for i in range(len(solve)):
#     x, y, z = draw_leg(path_1[0], solve[i])
#     data[i], = ax.plot(x, y, z)
x, y, z = draw_leg(path_1[0], solve[0])
data, = ax.plot(x, y, z)
while True:
    for path in paths:
        for point in path:
            start = time.time()
            solve = fast_solve_3D(point)
            # for i in range(len(solve)):
            #     x, y, z = draw_leg(point, solve[i])
            #     data[i].set_xdata(x)
            #     data[i].set_ydata(y)
            #     data[i].set_3d_properties(z)
            # fig.canvas.draw()
            # fig.canvas.flush_events()
            x, y, z = draw_leg(point, solve[0])
            data.set_xdata(x)
            data.set_ydata(y)
            data.set_3d_properties(z)
            fig.canvas.draw()
            fig.canvas.flush_events()
            print(round(time.time() - start, 3), solve)

