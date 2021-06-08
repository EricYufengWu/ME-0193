import time
from machine import Pin

# This is a class that can be used to drive bipolar stepper motor that
# are tiny enough to be driven directly from the microcontroller's GPIO pins

Class Tinystapper():
    def __init__(self, A_1 = 12, A_2 = 9, B_1 = 11, B_2 = 10):
        self.A_1 = Pin(A_1, Pin.OUT)
        self.A_2 = Pin(A_2, Pin.OUT)
        self.B_1 = Pin(B_1, Pin.OUT)
        self.B_2 = Pin(B_2, Pin.OUT)
        self.curr_mode = 1
        self.curr_step = 0
        self.num_steps = 8
        self.sequence = []
        self.set_mode(1)
        
    # 0: full-stepping; 1: half-stepping
    def set_mode(self, mode):
        if mode == 0:
            self.sequence = [[1,1,0,0],[0,1,1,0],[0,0,1,1],[1,0,0,1]]
            self.num_steps = 4
        elif mode == 1:
            self.sequence = [[1,0,0,0],[1,1,0,0],[0,1,0,0],[0,1,1,0],
                            [0,0,1,0],[0,0,1,1],[0,0,0,1],[1,0,0,1]]
            self.num_steps = 8
    
    def mode(self):
        return self.mode

    def step(self):
        self.step_one(curr_step)
        print(curr_step)
        curr_step = curr_step + 1 if curr_step < (self.num_steps - 1) else 0
        
    def step_one(self, steps):
        A_1.value(steps[0])
        A_2.value(steps[1])
        B_1.value(steps[2])
        B_2.value(steps[3])
        
        
