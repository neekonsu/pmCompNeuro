# Forward Euler method:
## x' = x + dt(dx/dt)

## Simulation steps:
### define t0, tf; evaluate x' | t <- [t0, tf]
### define dx/dt as -> (x'-x)/dt
### define x(t) as -> f(t)

class timeseries (list):
    def __init__(self, elements = []):
        self.elements = elements if all(map(assert_tuple(elements)))

    # Assert type correctness of element e
    def assert_tuple(self, e):
        assert type(e) is tuple and len(e) == 2
        return True

    def __setitem__(self, i, e):
        assert_tuple(e)
        self.elements[i] = e
        pass

def euler_series(dxdt: callable, t0: float, tf: float, dt: float, x0: float) -> list:
    def next_x(dxdt, t0, tf, dt, x):
        if t0 == tf:
            return [(tf, x)]
        return euler_series(f, t0 + dt, tf, dt, x + dt*dxdt(x, t0))
    return [(t0, x0)] + next_x(f, t0, tf, dt, x0)

