import math, time
import numpy as numpy
# from sympy import var, solve, log, I

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
    
    # beta = var('beta')
    # E = L1**2 + (z / cos(beta) + L1 * tan(beta))**2 + x**2 - z**2 - y**2
    # sols = solve([E],[beta])

    S = -math.log(-(-(-(x + y)*(x - y))**(1/2) + z*1j)/(L1 - (-L1**2 - x**2 + y**2 + z**2)**(1/2)*1j))*1j
    return S1