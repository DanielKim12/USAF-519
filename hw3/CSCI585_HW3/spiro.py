import math

R = 36/10000         #as long as the values are same / scaling equally 
r = 9/10000
a = 30/10000
x = 0 
y = 0
t = 0 
#x0 = -118.28538 + R + r - a
#y0 = 34.0205
#n = 12 try 

while t < (int(math.pi * 16)):
    x = (R + r) * math.cos((r / R) * t) - a * math.cos((1 + r / R) * t)
    y = (R + r) * math.sin((r / R) * t) - a * math.sin((1 + r / R) * t)
    t += 0.01 
    print(f"{-118.28538 + x:5f},{34.0205 + y:5f}")

# -103.28538, 34.0205