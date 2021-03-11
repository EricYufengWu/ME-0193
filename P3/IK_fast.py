import math, cmath, time
from sympy import var, solve, log, I, sin, cos, tan
import numpy as np

# Defining Parameters
L1 = 54
L2 = 150
L3 = 150

def solve_2D(x,z):
    # Start = time.time()
    try:
        L4 = math.sqrt(x * x + z * z)
        theta_2_1 = math.atan(x / z) + math.acos(L4 / (2 * L2)) + math.pi / 2
        theta_3_1 = math.pi - math.acos((L2 * L2 + L3*L3 - L4 * L4) / (2 * L2 * L3))
        theta_2_2 = math.atan(x / z) - math.acos(L4 / (2 * L2)) + math.pi /2
        theta_3_2 = -(math.pi - math.acos((L2 * L2 + L3 * L3 - L4 * L4) / (2 * L2 * L3)))
        # print(time.time() - Start)
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

sweep_rez = 20

x_sweep = np.linspace(-50, 50, sweep_rez)
y_sweep = np.linspace(-104, 4, sweep_rez)
z_sweep = np.linspace(-250, -150, sweep_rez)

path_1 = np.stack((np.asarray([-50 for i in range(sweep_rez)]), np.asarray([-104 for i in range(sweep_rez)]), z_sweep), axis = -1)
path_2 = np.stack((x_sweep, np.asarray([-104 for i in range(sweep_rez)]), np.asarray([-150 for i in range(sweep_rez)])), axis = -1)
path_3 = np.stack((np.asarray([50 for i in range(sweep_rez)]), np.asarray([-104 for i in range(sweep_rez)]), np.flip(z_sweep)), axis = -1)
path_4 = np.stack((np.flip(x_sweep), np.asarray([-104 for i in range(sweep_rez)]), np.asarray([-250 for i in range(sweep_rez)])), axis = -1)
paths = [path_1, path_2, path_3, path_4]

for path in paths:
    for point in path:
        start = time.time()
        solve = fast_solve_3D(point)
        print(round(time.time() - start, 8), solve)