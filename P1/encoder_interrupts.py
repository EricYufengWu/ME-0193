import time
from machine import Pin
from encoder import Encoder

enc_1 = Encoder(enc_A = 14, enc_B = 15)
enc_2 = Encoder()

while True:
    print(enc_1.count)
    time.sleep(0.01)