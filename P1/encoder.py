import time
from machine import Pin

class Encoder():
    def __init__(self, enc_A = 14, enc_B = 15):
        self.A_flag = Pin.IRQ_FALLING
        self.count = 0
        self.A = Pin(enc_A, Pin.IN, Pin.PULL_UP)
        self.B = Pin(enc_B, Pin.IN, Pin.PULL_UP)
        self.A.irq(lambda pin: self.enc_count(pin.irq().flags()))
        self.B.irq(lambda pin: self.enc_compare(pin.irq().flags()), Pin.IRQ_FALLING)
        
    def enc_count(self, flag):
        self.A_flag = flag

    def enc_compare(self, flag):
        global count
        if self.A_flag == Pin.IRQ_FALLING:
            self.count += 1
        else:
            self.count -= 1
            
    def reset_count(self):
        self.count = 0
