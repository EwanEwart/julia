using LinearAlgebra;

# create a 3x3 matrix
A = [ 2 5; 1 3 ]
println("A = ",A)

# reverse the matrix by flipping it along both dimensions
B = reverse(reverse(A, dims=1), dims=2)

# convert the reversed matrix to a vector by flattening it
C = vec(B)

# print the result
println("C = ", C)

B = inv(A)
println("B = ", B)

println("A * B = ", A * B)
println("B * A = ", B * A)
