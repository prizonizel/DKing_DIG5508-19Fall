def plusone(x):
    return x+1

def increment_three_times(x):
    return plusone(plusone(plusone(x)))

def exponent(x,y):
    z=x
    for n in range(1,y):
        z=z*x
    return z
