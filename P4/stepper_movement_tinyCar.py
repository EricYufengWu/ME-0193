from machine import Pin
import utime

sequence = [
    [1,0,0,0], # Uncomment for half stepping
    [1,1,0,0],
    [0,1,0,0], # Uncomment for half stepping
    [0,1,1,0],
    [0,0,1,0], # Uncomment for half stepping
    [0,0,1,1],
    [0,0,0,1], # Uncomment for half stepping
    [1,0,0,1]
    ]

led = Pin(25, Pin.OUT)
A_1 = Pin(14, Pin.OUT)
A_2 = Pin(2, Pin.OUT)
B_1 = Pin(15, Pin.OUT)
B_2 = Pin(3, Pin.OUT)

def step(steps):
    A_1.value(steps[0])
    A_2.value(steps[1])
    B_1.value(steps[2])
    B_2.value(steps[3])

while 1:
    for i in range(10):
        for motor_step in sequence:
            step(motor_step)
            utime.sleep(0.2)
    led.value(1)
    utime.sleep(0.5)
    led.value(0)
        
    
    
