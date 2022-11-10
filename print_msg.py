#!/usr/bin/env python

import lib as lb
import sys

def main(message):
    print(message)
    with open('/home/mg254721/Bureau/test_cwl/python_out.txt', 'w') as f:
        f.write(message)
        

if __name__== "__main__":
    main(sys.argv[1])
