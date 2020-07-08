import sys

for line in sys.stdin:
    if len(sys.argv) > 1 and sys.argv[1] == 'c':
        string = bin(int(line.rstrip(),16))[2:].zfill(8)
        print(' '.join([string[i:i+8] for i in range(0, len(string), 8)]))
    else:
        print(line.rstrip())
