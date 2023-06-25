using Plots, Bezier

# Return two lists with the x and y values
# for the Quadratic Bezier curve
# that spans from (0,0) to (1,1)
# with the controll point (0,1);
y₃ = bezier( [ 0 , 0.5 , 1 ] , [ 1 , 0 ,  1 ] ) # one control point

# Return a Cubic Bezier curve
# with an added control point at (0,1):
y₄ = bezier( [ 0 , 0   , 1, 1 ] , [ 0 ,  1  , -1 , 0.5 ] ) # two / four control points

# The number of coordinates is 100 by default,
# but can be modified with the range keyword.
# (
#   [0.0, 0.10400000000000004, 0.35200000000000004, 0.648, 0.8960000000000001, 1.0] # <- x
# , [0.0, 0.2920000000000001, 0.17600000000000002, -0.03600000000000002, -0.03199999999999997, 0.5] <-y
# )
y₅ = bezier( [ 0, 0, 1, 1 ] , [ 0, 1, -1, 0.5 ], 0:0.2:1 )

# plot( [ y₁ , y₂, y₃ ] )
plot( y₃ )
plot!( y₄ )
plot!( y₅ )

# println("typeof(y₁)",typeof(y₁)) # typeof(y₁)     :Tuple{Vector{Float64}, Vector{Float64}}
# println(y₁)
