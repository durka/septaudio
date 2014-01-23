from __future__ import division
import hokuyoaist as H
from matplotlib import pyplot as P
import serial as S
import sys
import os
import time
import operator
import math

def setup_laser():
    print 'Opening laser'
    laser = H.Sensor()
    laser.open('type=serial,device=/dev/tty.usbmodem1421,timeout=1')
    if not laser.is_open():
        raise 'Laser did not open'
    data = H.ScanData()
    return laser, data

def setup_arm():
    print 'Opening arm'
    arm = S.Serial('/dev/tty.usbserial-A700ejEl', 9600, timeout=2)
    if not arm.isOpen():
        raise 'Arm did not open'
    if arm.readline().strip() != '=== Dynamixel controller initialized ===':
        raise 'Arm not responding'
    return arm

def closest(laser, data):
    start = 360
    end = 720
    d = 0.33 # distance from laser to arm base (TODO measure this)

    # find the closest reading
    #   "blinders on": only consider the middle 45 degrees of the field of vision
    #   allowed range is 255-1500 which is approx. 1 foot - 2 meters
    laser.get_ranges(data)
    ranges = [data.range(i) for i in range(data.ranges_length())]
    ranges = [r if 255 < r < 1500 else float('inf') for r in ranges]
    i,y = min(enumerate(ranges[start:end]), key=operator.itemgetter(1))

    # from sensor clicks to meters
    y /= 765 # TODO I totally made up this calibration constant
    
    # angles
    t = (i + start - 540)/1.5*math.pi/180 # angle WRT laser
    t = math.asin(math.sin(math.pi - t) * y/math.sqrt(y**2 + d**2 - 2*y*d*math.cos(math.pi - t))) # angle WRT arm

    return i, y, t

def demo():

    laser, data = setup_laser()
    arm = setup_arm()

    laser.set_power(True)
    try:
        while True:
            i, y, t = closest(laser, data)
            print i, y, t
            p = 512 + t*512/math.pi
            print 'Moving arm to:', p
            arm.write('s 1 %d\n' % p)
            time.sleep(t) # TODO another calibration constant, or we could do reads I guess
            if y < 0.75:
                print 'Audio warning'
                os.system('say Move out of the way citizen')
    except KeyboardInterrupt:
        print 'Shutting down'
        laser.set_power(False)

def test():
    laser, data = setup_laser()

    laser.set_power(True)
    try:
        while True:
            i,y,t = closest(laser, data)
            print i, y, t
    except KeyboardInterrupt:
        print 'Shutting down'
        laser.set_power(False)


if __name__ == '__main__':
    {'demo': demo,
     'test': test}[sys.argv[1]]()

