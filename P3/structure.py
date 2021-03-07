import math
import numpy as numpy
import time

# Defining Parameters
L1 = 54
L2 = 150
L3 = 150

def solve_2D(x,z):
    Start = time.time()
    try:
        L4 = math.sqrt(x * x + z * z)
        theta_2_1 = math.atan(x / z) + math.acos(L4 / (2 * L2)) + math.pi  /2
        theta_3_1 = math.pi - math.acos((L2*L2 + L3*L3 - L4 * L4) / (2*L2*L3))
        theta_2_2 = math.atan(x / z) - math.acos(L4 / (2 * L2)) + math.pi  /2
        theta_3_2 = -(math.pi - math.acos((L2*L2 + L3*L3 - L4 * L4) / (2*L2*L3)))
        print(time.time() - Start)
        return [theta_2_1, theta_3_1], [theta_2_2, theta_3_2]
    except:
        return None, None

