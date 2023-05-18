using Plots

# a = [0:10:10;0:10:10]
# plot(a)

# x = range(0, 20, length=100)
# y = sin.(x)
# plot(x, y)
f(x) = x^2/100
x = range(0, 10, length=100)
y1 = sin.(x)
y2 = sinh.(x)/1E4
y3 = cos.(x)
y4 = sqrt.(x)
y5 = f.(x)
plot(x, [y1 y2 y3 y4 y5])

