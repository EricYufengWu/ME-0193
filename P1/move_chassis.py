import time
from machine import Pin,PWM
from encoder import Encoder

AIN1 = Pin(19, Pin.OUT)
AIN2 = Pin(20, Pin.OUT)
PWMA = PWM(Pin(21))
enc_1 = Encoder(enc_A = 14, enc_B = 15)
enc_2 = Encoder(enc_A = 12, enc_B = 13)
# Pololu 1:75 medium-power N20 motors - 225 counts per revolution

def stop():
    PWMA.duty_u16(0)
#     PWMB.duty_u16(0)

AIN1.value(1)
AIN2.value(0)
PWMA.duty_u16(255*100)
setpoint = 10
Kp = 100
while True:
#     speed = enc_1.get_speed_rad()
#     error = setpoint - speed
#     duty = 255*100 + int(error)*Kp
#     print(duty)
#     PWMA.duty_u16(duty)
#     time.sleep(0.1)
    print(enc_1.get_speed_rad(),enc_2.get_speed_rad())
    time.sleep(0.1)
    
