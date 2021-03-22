from machine import Pin
import utime

sequence = [
    [1,0,0,0],
    #[1,1,0,0],
    [0,1,0,0],
    #[0,1,1,0],
    [0,0,1,0],
    #[0,0,1,1],
    [0,0,0,1],
    #[1,0,0,1]
    ]

A_1 = Pin(18, Pin.OUT)
A_2 = Pin(19, Pin.OUT)
B_1 = Pin(20, Pin.OUT)
B_2 = Pin(21, Pin.OUT)

def step(steps):
    A_1.value(steps[0])
    A_2.value(steps[1])
    B_1.value(steps[2])
    B_2.value(steps[3])

while 1:
    for motor_step in sequence:
        step(motor_step)
        utime.sleep(0.02)
    
    
    
