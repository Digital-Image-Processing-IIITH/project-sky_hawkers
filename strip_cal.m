% General code for strip calculation
% Parameters to be filled in after capturing the input

len = 20 % in centimetres arm length (measure it from center of rotation to optical center)
rad = 4  % in centimetres, as in the paper. radius for baseline

beta = asin(rad/len)

f = 18 % in millimetres Cameras focal length
dist = tan(beta)*f % distance from the centre in mm

conversion_factor = "conversion between inches and mm"  %if necessary
height = 1080
dist_mm = dist/conversion_factor*height
