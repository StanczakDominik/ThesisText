import numba
import numpy

def sqrt(x):
    return x**0.5

sqrt_jitted = numba.njit(sqrt)

@numba.njit
def sqrt_jitted_as_decorator(x):
    return x**0.5

x = numpy.arange(100000)

#%timeit sqrt(x)
# 49.4 ms +- 8.77 ms per loop (mean +- std. dev. of 7 runs, 10 loops each)

#%timeit sqrt_jitted(x)
# 4.66 ms +- 70.3 us per loop (mean +- std. dev. of 7 runs, 1 loop each)

#%timeit sqrt_jitted_as_decorator(x)
# 4.38 ms +- 50.8 us per loop (mean +- std. dev. of 7 runs, 1 loop each)

