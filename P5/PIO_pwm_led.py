from machine import Pin
from rp2 import PIO, StateMachine, asm_pio
from time import sleep

max_count = 1000
thresh_low = 100
thresh_high = 900

@asm_pio(sideset_init=PIO.OUT_LOW)   #Decorator: Tells MPY the following is asm
def pwm_prog():
    pull(noblock) .side(0)    # Takes data from output FIFO (line 22) and put in OSR
    mov(x, osr)               # variable-like, take osr to x
    mov(y, isr)               # take isr to y
    label("pwmloop")          # 
    jmp(x_not_y, "skip")      # if xy diff, jump to "skip"
    nop()         .side(1)
    label("skip")
    jmp(y_dec, "pwmloop")
    
# Y gets a value of 500. Say a value of 200 is put to the OSR (then X)
# via the put() command. In each instance of the asm codeexecution,
# the asm code will first set the pin low, then decrement Y by 1 in a loop
# until y matches x. When y = x = 200, line 14 is called once, setting
# the pin high. With the pin set high, y continues to decrement by 1 until 0.
# Then the asm is repeated and the pin is set to low again. Therefore,
# setting x to 200 will result the pin to be high 200/500 of the times,
# corresponding to a 40% duty cycle.
    
# State Machine init
pwm_sm = StateMachine(0, pwm_prog, freq=10000000, sideset_base=Pin(16))

# State Machine 
pwm_sm.put(max_count)         # Put data in output FIFO
pwm_sm.exec("pull()")         
pwm_sm.exec("mov(isr, osr)")  # Load val into ISR
pwm_sm.active(1)

# PWM Test
#while True:
#    for i in range(max_count):
#        pwm_sm.put(i)
#        sleep(0.001)
#    for i in range(max_count):
#        pwm_sm.put(max_count - i)
#        sleep(0.001)

# Jerkky Motion
# pwm_sm.put(0)
# sleep(1)
# pwm_sm.put(max_count)
# sleep(2)
# pwm_sm.put(0)

# Smooth Acceleration
for i in range(max_count - thresh_low):
    pwm_sm.put(i + thresh_low)
    sleep(0.001)
sleep(2)
for i in range(max_count):
    pwm_sm.put(max_count-i)
    sleep(0.001)
pwm_sm.put(0)
        

# Q for Brandon: is "MOV" more like "cut" or "copy"?
# Is it possible to have one PIO code control two pins or switch pins midway?
# https://github.com/micropython/micropython/tree/master/examples/rp2

