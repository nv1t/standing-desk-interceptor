import time
import serial
import sys


# this port address is for the serial tx/rx pins on the GPIO header
SERIAL_PORT = '/dev/ttyUSB1'
# be sure to set this to the same rate used on the Arduino
SERIAL_RATE = 9600

def main():
    ser = serial.Serial(SERIAL_PORT, SERIAL_RATE)
    for line in sys.stdin:
        print(line.rstrip())
        ser.write(bytearray.fromhex(line.rstrip()))
        time.sleep(0.2)


if __name__ == "__main__":
    main()
