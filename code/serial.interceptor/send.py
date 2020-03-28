import time
import serial
import sys


# this port address is for the serial tx/rx pins on the GPIO header
SERIAL_PORT = '/dev/ttyUSB0'
# be sure to set this to the same rate used on the Arduino
SERIAL_RATE = 9600

commands = {
    'reset': '\x9b\x06\x02\x00\x00\x6c\xa1\x9d',
    'Mod2': '\x9b\x06\x02\x08\x00\xac\xa6\x9d',
    'Mod1': '\x9b\x06\x02\x04\x00\xac\xa3\x9d',
    'down': '\x9b\x06\x02\x02\x00\x0c\xa0\x9d',
    'up': '\x9b\x06\x02\x01\x00\xfc\xa0\x9d'
}


def main():
    ser = serial.Serial(SERIAL_PORT, SERIAL_RATE)
    while True:
        print('sending...')
        ser.write(commands[sys.argv[1]])
        
        time.sleep(0.1)
        continue
        try:
            if sys.argv[2]:
                exit(1)
        except:
            continue
        # using ser.readline() assumes each line contains a single reading
        # sent using Serial.println() on the Arduino
        #reading = ser.read(8)
        # reading is a string...do whatever you want from here
        #print(reading.encode('hex'))


if __name__ == "__main__":
    main()
