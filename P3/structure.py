import math, cmath, time
import numpy as np
from sympy import var, solve, log, I, sin, cos, tan

# Defining Parameters
L1 = 54
L2 = 150
L3 = 150
x,y,z = 0,-54,-300

def solve_2D(x,z):
    # Start = time.time()
    try:
        L4 = math.sqrt(x * x + z * z)
        theta_2_1 = math.atan(x / z) + math.acos(L4 / (2 * L2)) + math.pi / 2
        theta_3_1 = math.pi - math.acos((L2 * L2 + L3*L3 - L4 * L4) / (2 * L2 * L3))
        theta_2_2 = math.atan(x / z) - math.acos(L4 / (2 * L2)) + math.pi /2
        theta_3_2 = -(math.pi - math.acos((L2 * L2 + L3 * L3 - L4 * L4) / (2 * L2 * L3)))
        # print(time.time() - Start)
        return [theta_2_1, theta_3_1], [theta_2_2, theta_3_2]
    except:
        return None, None

def solve_3D(x,y,z):
    Start = time.time()
    sols = []
    beta = var('beta')
    E = L1**2 + (z / cos(beta) + L1 * tan(beta))**2 + x**2 - z**2 - y**2
    s = solve([E],[beta])
    for sol in s:
        sols.append(complex(sol[0]).real)
    print(time.time() - Start)
    return sols

def fast_solve_3D(x,y,z):
    # Using cmath instead
    Start = time.time()
    sols = []
    sols.append(-cmath.log(-(- (-(x + y)*(x - y))**(1/2) + z*1j)/(L1 - (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j)
    sols.append(-cmath.log(-(- (-(x + y)*(x - y))**(1/2) + z*1j)/(L1 + (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j)
    sols.append(-cmath.log(-((-(x + y)*(x - y))**(1/2) + z*1j)/(L1 - (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j)
    sols.append(-cmath.log(-((-(x + y)*(x - y))**(1/2) + z*1j)/(L1 + (- L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j)
    for i in range(len(sols)):
        sols[i] = sols[i].real
    print(time.time() - Start)
    return sols