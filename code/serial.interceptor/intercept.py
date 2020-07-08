from threading import Thread
import time
import serial
import sys
import os

# this port address is for the serial tx/rx pins on the GPIO header
SERIAL_PORT_BUT = '/dev/ttyUSB1'
SERIAL_PORT_CTRL = '/dev/ttyUSB0'
# be sure to set this to the same rate used on the Arduino
SERIAL_RATE = 9600

ser_but = serial.Serial(SERIAL_PORT_BUT, SERIAL_RATE)
ser_ctrl = serial.Serial(SERIAL_PORT_CTRL,SERIAL_RATE)

commands = {
    'reset': '\x9b\x06\x02\x00\x00\x6c\xa1\x9d',
    'Mod2':  '\x9b\x06\x02\x08\x00\xac\xa6\x9d',
    'Mod1':  '\x9b\x06\x02\x04\x00\xac\xa3\x9d',
    'down':  '\x9b\x06\x02\x02\x00\x0c\xa0\x9d',
    'up':    '\x9b\x06\x02\x01\x00\xfc\xa0\x9d'
}

def read_serial(handler):
    buf = ''
    while True:
        buf += handler.read(1)
        if buf[-1].encode('hex') == '9d':
            print(buf.encode('hex'))
            return buf

def ctrler():
    while True:
        ser_but.write(read_serial(ser_ctrl))

def board():
    while True:
        if os.path.exists('ctrl/Mod2'):
            ser_ctrl.write(commands['Mod2'])
            time.sleep(0.1)
        elif os.path.exists('ctrl/Mod1'):
            ser_ctrl.write(commands['Mod1'])
            time.sleep(0.1)
        else:
            ser_ctrl.write(read_serial(ser_but))

def main():
    t1 = Thread(target = board, args = ())
    t2 = Thread(target = ctrler, args = ())
    t1.start()
    t2.start()

    try:
        while True:
            time.sleep(2)
    except KeyboardInterrupt:
        t1.join()
        t2.join()

if __name__ == "__main__":
    main()
