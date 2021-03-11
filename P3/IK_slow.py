import math, cmath, time
from sympy import var, solve, log, I, sin, cos, tan
import numpy as np

# Defining Parameters
L1 = 54
L2 = 150
L3 = 150

test_dict = {                      # for testing theta_1 only
    "b-90": [0, -300, 54],
    "b-89": [0, -300.9, 48.76],
    "b-79.9": [0, -304.82, 0],     # when z is zero
    "b-60": [0, -286.81, -103.23],
    "b-45": [0, -250.32, -173.95],
    "b-30": [0, -196.77, -232.81],
    "b-15": [0, -129.81, -275.80],
    "b-10": [0, -105.27, -286.07],
    "b-5": [0, -79.94, -294.15],
    "b0": [0, -54, -300],
    "b5": [0, -27.65, -303.56],
    "b10": [0, -1.09, -304.82],    # 
    "b10.1": [0, 0, -304.82],      # when y is zero
    "b10.4": [0, 1.04, -304.82],   #
    "b15": [0, 25.49, -303.75],
    "b30": [0, 103.23, -286.81],
    "b45": [0, 173.95, -250.32],
    "b60": [0, 232.81, -196.77],
    "b89": [0, 299.01, -59.23],
    "b90": [0, 300, -54],
}

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

def solve_3D(coord):
    x = coord[0]
    y = coord[1]
    z = coord[2]
    # start = time.time()
    sols = []
    beta = var('beta')
    E = L1**2 + (z / cos(beta) + L1 * tan(beta))**2 + x**2 - z**2 - y**2
    s = solve([E],[beta])
    for sol in s:
        sols.append(complex(sol[0]).real * 180 / math.pi)
    sols.sort()
    if z == 0:
        beta = sols[0]
    elif y < 0 and sols[0] < 0:
        beta = sols[1]
    elif y > 0:
        sols = [abs(s) for s in sols]
        sols.sort()
        beta = sols[1]
    else:
        beta = sols[0]
    z_0 = z / math.cos(beta) + L1 * math.tan(beta)
    if z_0 < -300 or abs(beta) >= math.pi / 2:
        z_0 = -300
    # print("beta = {}, x = {}, z0 = {}".format(beta, x, z_0))
    solve_1, solve_2 = solve_2D(x, z_0)
    theta_1 = (math.pi / 2 + beta) * 180 / math.pi
    try:
        return solve_1.insert(0, theta_1), solve_2.insert(0, theta_1)
    except:
        return solve_1, solve_2
    # print(time.time() - start)
    # return sols

def sweep_test():
    print("testing sympy solve...")
    time.sleep(1)
    start = time.time()
    for item in test_dict:
        print(item, solve_3D(test_dict[item]))
    print("sympy solve took {} seconds".format(time.time() - start))

sweep_test()