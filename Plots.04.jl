using Plots

# cubic Bezier
# Bernstein polynoms

x = range(0,1;length=100)

f(x) =  (1-x)^3 * x^0
g(x) = 3(1-x)^2 * x^1
h(x) = 3(1-x)^1 * x^2
i(x) =  (1-x)^0 * x^3
s(x) = f(x)+g(x)+h(x)+i(x)

y1 = f.(x)
y2 = g.(x)
y3 = h.(x)
y4 = i.(x)
y5 = s.(x)

plot(x,[y1 y2 y3 y4 y5])
