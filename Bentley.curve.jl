# Microstation Bezier
======
a = 1;
b = 2;
c = -4;
d = 0;

from = -5;
to = 5;

u = from*(1-t)+to*t;

x = u;
y = d+u*(c+u*(b+u*a));

x = from*(1-t)+to*t
y = d+u*(c+u*(b+u*a))
y = d+uc+uu(b+ua)
y = uuua + buu + cu + d

x = from*(1-t)+to*t
y = a * x^3 + b * x^2 + c * x + d

# Microstation cosh
====

a=10;
from=-10;
to=10;
x=from*(1-t)+to*t;
y=a*cosh(t);
