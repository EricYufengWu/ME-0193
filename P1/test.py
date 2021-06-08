import time
from machine import Pin,PWM, I2C

AIN1 = Pin(19, Pin.OUT)
AIN2 = Pin(20, Pin.OUT)
PWMA = PWM(Pin(21))
BIN1 = Pin(16, Pin.OUT)
BIN2 = Pin(17, Pin.OUT)
PWMB = PWM(Pin(18))

i2c = I2C(1, scl=Pin(7), sda=Pin(6), freq=100000)

def test_motors():
    AIN1.value(0)
    AIN2.value(1)
    BIN1.value(0)
    BIN2.value(1)

    for i in range(255):
        PWMA.duty_u16(255*i)
        PWMB.duty_u16(255*i)
        time.sleep(0.01)
    time.sleep(1)
    for i in range(255):
        PWMA.duty_u16(255*(255-i))
        PWMB.duty_u16(255*(255-i))
        time.sleep(0.01)


def stop():
    PWMA.duty_u16(0)
    PWMB.duty_u16(0)
    