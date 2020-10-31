% General code for strip calculation

len = 20 % in centimetres arm length (measure it from center of rotation to optical center)
rad = 4  % in centimetres, as in the paper. radius for baseline

beta = asin(rad/len)

f = 18 % in millimetres Cameras focal length
dist = tan(beta)*f % distance from the centre in mm

sensor_size = 36  %in mm
height = 1080
dist_mm = dist/sensor_size*height
