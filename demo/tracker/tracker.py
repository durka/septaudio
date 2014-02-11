from __future__ import division
import hokuyoaist as H
from matplotlib import pyplot as P
import serial as S
import sys
import os
import time
import operator
import math
import multiprocessing as mp

def setup_laser():
    print 'Opening laser'
    laser = H.Sensor()
    if os.uname()[0] == 'Linux':
        laser.open('type=serial,device=/dev/ttyACM0,timeout=1')
    else:
        laser.open('type=serial,device=/dev/tty.usbmodem1421,timeout=1')
    if not laser.is_open():
        raise Exception('Laser did not open')
    data = H.ScanData()
    return laser, data

def setup_arm():
    print 'Opening arm'
    if os.uname()[0] == 'Linux':
        arm = S.Serial('/dev/ttyUSB0', 9600, timeout=2)
    else:
        arm = S.Serial('/dev/tty.usbserial-A700ejEl', 9600, timeout=2)
    if not arm.isOpen():
        raise Exception('Arm did not open')
    if arm.readline().strip() != '=== Dynamixel controller initialized ===':
        raise Exception('Arm not responding')

    # torque settings
    #arm.write('t 1 0\n')
    #arm.write('t 2 1\n')
    #arm.write('t 3 1\n')
    #arm.write('t 3 1\n')
    #arm.write('t 4 1\n')
    #arm.write('t 5 1\n')

    return arm

def closest(laser, data):
    start = 360
    end = 720
    mid = (start + end)/2
    d = 0.14605 # distance from laser to arm base (meters)

    # find the closest reading
    #   "blinders on": only consider the middle 45 degrees of the field of vision
    #   allowed range is 300-1500 which is approx. 1 foot - 2 meters
    laser.get_ranges(data)
    ranges = [data.range(i) for i in range(data.ranges_length())]
    ranges = [r if 100 < r < 1500 else float('inf') for r in ranges]
    i,y = min(enumerate(ranges[start:end]), key=operator.itemgetter(1))

    # from sensor clicks to meters
    y /= 1000
    
    # angles
    t = (i + start - mid)/4*math.pi/180 # angle WRT laser
    t = math.asin(math.sin(math.pi - t) * y/math.sqrt(y**2 + d**2 - 2*y*d*math.cos(math.pi - t))) # angle WRT arm

    return i, y, t

def loud_noises():
    if os.uname()[0] == 'Linux':
        os.system('espeak "danger. septa bus approaching"')
    else:
        os.system('say danger. septa bus approaching')

def demo():

    laser, data = setup_laser()
    arm = setup_arm()
    proc = mp.Process(target=loud_noises)

    laser.set_power(True)
    arm.write('Sm 100\ns 1 512\n') # emergency stop, set speed, and reset position
    time.sleep(2)
    print 'Starting'
    HIST = 5
    t_hist = [0]*HIST
    try:
        while True:
            i, y, t = closest(laser, data)
            
            if not math.isinf(y):
                # low pass filter
                t_hist[1:] = t_hist[:-1]
                t_hist[0] = t
                tf = sum(t_hist)/HIST

                print i, y, t, tf
                p = 512 + tf*300/(math.pi/2)
                print 'Moving arm to:', p
                arm.write('s 1 %d\n' % p)
                time.sleep(abs(tf)/2) # TODO another calibration constant, or we could do reads I guess
                if y < 0.5:
                    print 'Audio warning'
                    if not proc.is_alive():
                        proc = mp.Process(target=loud_noises)
                        proc.start()
    except KeyboardInterrupt:
        print 'Shutting down'
        laser.set_power(False)  # turn off laser
        arm.write('Ss 1 512\n') # emergency stop + reset position
        time.sleep(2)
        laser.close()
        arm.close()

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

