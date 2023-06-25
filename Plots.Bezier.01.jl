using Plots
using Bezier

# P₁ = (0,0)
# P₂ = (1,1)
# P₃ = (0,1)
y₁ = bezier([0,1,0],[0,1,1])
# println("typeof(y1)\t:",typeof(y1))
# typeof(y1)      :Tuple{Vector{Float64}, Vector{Float64}}

# P₁ = (0,0)
# P₂ = (1,1)
# P₃ = (0,1)
y₂ = bezier([0,-1,0],[0,1,1])

# P₁ = (0,0)
# P₂ = (1,2)
# P₃ = (1,0)
y₃ = bezier([0,1,1],[0,2,0])
# println("typeof(y2)\t:",typeof(y2))
# typeof(y1)      :Tuple{Vector{Float64}, Vector{Float64}}

# P₁ = (0,0)
# P₂ = (1,-1)
# P₃ = (1,0)
y₄ = bezier([0,1,1],[0,-1,0])

plot([y₁,y₂,y₃,y₄])

