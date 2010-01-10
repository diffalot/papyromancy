width=5000

size(width, width)
from math import pi

colormode(RGB)
#                 Red  green  blue  alpha
red = color(1,0,0)
green = color(0,1,0)
blue = color(0,0,1)

radius = width/3
diameter = radius * 2

r = (radius/ pi)*0.5

translate(width/18,width/6)

fill(red)
#oval(0,0, radius, radius)

rotate(60)

translate((radius/2))

fill(green)
oval(0,0, radius, radius)

rotate(-120)

translate((radius/2))

fill(blue)
#oval(0,0, radius, radius)