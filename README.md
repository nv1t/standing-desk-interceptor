# standing-desk-interceptor
I wanted to intercept the communication between my Flexispot E5B standing desk buttons. This is the progress on the project.
It should work on any other flexispot desk as well, as i suspect they use the same button interface with nearly the same protocol. But this needs testing!

# RJ45 Pins
1 - RES
2 - SWIM
3 - ?
4 - WAKE
5 - RX
6 - TX
7 - GND
8 - VCC

# Using SWIM
The SWIM Debug interface is on the RJ45 Port, but not possible to use, due to set Read Protection, which can only be disabled by overwriting the Chip itself.

# Protocol
Every Command starts with 0x9b and ends with 0x9d. The second byte is the length of the Message with the Endbyte included.

Those are the know commands from the button controller to the motor controller with their respective button names.
```
commands = {
    'reset': '\x9b\x06\x02\x00\x00\x6c\xa1\x9d',
    'Mod2':  '\x9b\x06\x02\x08\x00\xac\xa6\x9d',
    'Mod1':  '\x9b\x06\x02\x04\x00\xac\xa3\x9d',
    'down':  '\x9b\x06\x02\x02\x00\x0c\xa0\x9d',
    'up':    '\x9b\x06\x02\x01\x00\xfc\xa0\x9d'
}
```

Further inspection can be made by intercepting the commands and bit flip to find out where the table height is included.
