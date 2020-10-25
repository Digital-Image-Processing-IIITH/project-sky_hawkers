% General code for strip calculation
% Parameters to be filled in after capturing the input

len = "arm length val" % arm length (measure it from center of rotation to optical center)
rad = "radius val"  % radius for baseline

beta = asin(rad/len)

f = "focal length of camera val" % Camera's focal length
dist = tan(beta)*f % distance from the centre in mm

conversion_factor = "conversion between inches and mm"  %if necessary
height = 1080
dist_mm = dist/conversion_factor*height
