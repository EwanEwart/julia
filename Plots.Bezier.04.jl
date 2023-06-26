using Plots, Bezier

# 2x7 Matrix{Int64}
m = [
    4 7 5 4 6 5 3;
    3 4 -2 4 5 6 0
]

plot(bezier(m))

scatter!(m[1,:],m[2,:])

x = m[ 1, :]
println("x\t:",x)

y = m[ 2,: ]
println("y\t:",y)
