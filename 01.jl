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
print("A * S = b")
print("---------")
print("A = ", A, '\n')
print("b = ",b, '\n')
print("C = ", S, '\n')
print("A * S = ", A*S)
