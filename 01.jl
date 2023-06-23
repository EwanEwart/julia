using LinearAlgebra

A = [ 1 2 2; 1 0 2; 3 1 -1 ]
b = [-1,-2.55, π]

tr(A)

# solveable ?
det(A)

# yes
AI = inv(A)
S = AI * b

# print results
println("A * S = b")
println("---------")
println("A = ", A)
println("b = ",b)
println("C = ", S)
println("A * S = ", A*S)
