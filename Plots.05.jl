using Plots

# curve to interploate
f(x) = 1 / (1 + 25x^2)

# interpolant
g(x) = 1.2019x^4 - 1.7308x^2 + 0.56731

# x data
x = range(-1.0,+1.0,100)

# y data
# y1 = @. f(x)
y1 = f.(x)

# y data
# y2 = @. g(x)
y2 = g.(x)


plot(x,[y1,y2])

# points for interpolant
m =
[
        (-1.0, 0.038461)
      , (-0.6, 0.1)
      , (-0.2, 0.5)
      , (0.2, 0.5)
      , (0.6, 0.1)
      , (1.0, 0.038461)
]
scatter!(
        m
      , markersize=[3,4,5,6,7,8]
      , markercolor=[:red,:green,:blue,:orange,:pink,:violet]
)

# scatter(
#       [ -1.0, -0.6, -0.2, 0.2, 0.6, 1.0 ]
#     , [ -0.038461, 0.1, 0.5, 0.5, 0.1, 0.038461 ]
#     , markersize=[3,4,5]
#     , markercolor=[:red,:green,:blue]
#  )

