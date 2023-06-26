using LinearAlgebra
using CalculusWithJulia
using ForwardDiff
using Plots

# Quadratic Spline Interpolation
# Quadratic Spline Interpolation
# Quadratic Spline Interpolation

# The launch of a rocket

# time t [s] / speed v(t) [m/s] measured (control points)
t₁ = 0.0    ; vt1 = 0.0
t₂ = 10.0   ; vt2 = 227.04
t₃ = 15.0   ; vt3 = 362.78
t₄ = 20.0   ; vt4 = 517.35
t₅ = 22.5   ; vt5 = 602.97
t₆ = 30.0   ; vt6 = 901.67



# 1. Each quadratic passes through two consecutive data points.
# v1(t₁) = a₁t₁² + b₁t₁ + c₁ = vt₁ #  0   ≦ t ≦ 10
# v1(t₂) = a₁t₂² + b₁t₂ + c₁ = vt₂ #  0   ≦ t ≦ 10

# v2(t₂) = a₂t₂² + b₂t₂ + c₂ = vt₂ # 10   ≦ t ≦ 15
# v2(t₃) = a₂t₃² + b₂t₃ + c₂ = vt₃ # 10   ≦ t ≦ 15

# v3(t₃) = a₃t₃² + b₃t₃ + c₃ = vt₃ # 15   ≦ t ≦ 20
# v3(t₄) = a₃t₄² + b₃t₄ + c₃ = vt₄ # 15   ≦ t ≦ 20

# v4(t₄) = a₄t₄² + b₄t₄ + c₄ = vt₄ # 20   ≦ t ≦ 22.5
# v4(t₅) = a₄t₅² + b₄t₅ + c₄ = vt₅ # 20   ≦ t ≦ 22.5

# v5(t₅) = a₅t₅² + b₅t₅ + c₅ = vt₅ # 22.5 ≦ t ≦ 30
# v5(t₆) = a₅t₆² + b₅t₆ + c₅ = vt₆ # 22.5 ≦ t ≦ 30

# 2. The quadratics have continuous derivatives at the common interior data points.
# v2'(t₂) - v3'(t₂) = 0
# v3'(t₃) - v4'(t₃) = 0
# v4'(t₄) - v5'(t₄) = 0
# v5'(t₅) - v6'(t₅) = 0

# 2a₁t₂ + b₁ - 2a₂t₂ - b₂ = 0
# 2a₂t₃ + b₂ - 2a₃t₃ - b₃ = 0
# 2a₃t₄ + b₃ - 2a₄t₄ - b₄ = 0
# 2a₄t₅ + b₄ - 2a₅t₅ - b₅ = 0

# Assuming the last quadratic a₅t² + b₅t + c₅ is linear
# Why did we choose the last spline to be linear ?
# Base it on which interval is smaller:
# If [x₁,x₂] is smaller than [xₙ₋₁,xₙ],
# that is |x₂ - x₁| ≦ |xₙ - xₙ₋₁|
# that is first interval ≦ last interval,
# then choose a₁ = 0, otherwise choose aₙ = 0
#  =>
# b₅t + c₅ = 0

# x = [ a₁ b₁ c₁ a₂ b₂ c₂ a₃ b₃ c₃ a₄ b₄ c₄ a₅ b₅ c₅ ]

b = [
    vt1,
    vt2,
    vt2,
    vt3,
    vt3,
    vt4,
    vt4,
    vt5,
    vt5,
    vt6,
    0,
    0,
    0,
    0,
    0,
]

M = [
    t₁^2 t₁ 1 0 0 0 0 0 0 0 0 0 0 0 0
    t₂^2 t₂ 1 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 t₂^2 t₂ 1 0 0 0 0 0 0 0 0 0
    0 0 0 t₃^2 t₃ 1 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 t₃^2 t₃ 1 0 0 0 0 0 0
    0 0 0 0 0 0 t₄^2 t₄ 1 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 t₄^2 t₄ 1 0 0 0
    0 0 0 0 0 0 0 0 0 t₅^2 t₅ 1 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 t₅^2 t₅ 1
    0 0 0 0 0 0 0 0 0 0 0 0 t₆^2 t₆ 1
    2t₂ 1 0 -2t₂ -1 0 0 0 0 0 0 0 0 0 0
    0 0 0 2t₃ 1 0 -2t₃ -1 0 0 0 0 0 0 0
    0 0 0 0 0 0 2t₄ 1 0 -2t₄ -1 0 0 0 0
    0 0 0 0 0 0 0 0 0 2t₅ 1 0 -2t₅ -1 0
    0       0       0       0       0       0       0       0       0       0       0       0       0       1       1;
    # 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
]

IM = inv(M)

sv = IM * b # solution vector

parameters = (a₁, b₁, c₁, a₂, b₂, c₂, a₃, b₃, c₃, a₄, b₄, c₄, a₅, b₅, c₅) = sv

# quadratic splines (interpolants) == quadratic spline Interpolation
v1(t) = a₁ * (t^2) + b₁ * t + c₁     #    0    ≦  t  ≦  10
v2(t) = a₂ * (t^2) + b₂ * t + c₂     #   10    ≦  t  ≦  15
v3(t) = a₃ * (t^2) + b₃ * t + c₃     #   15    ≦  t  ≦  20
v4(t) = a₄ * (t^2) + b₄ * t + c₄     #   20    ≦  t  ≦  22.5
v5(t) = a₅ * (t^2) + b₅ * t + c₅     #   22.5  ≦  t  ≦  30

function v(t)
    iv = 0
    if t₁ <= t < t₂
        iv = 1
        rv = v1(t)
    elseif t₂ <= t < t₃
        iv = 2
        rv = v2(t)
    elseif t₃ <= t < t₄
        iv = 3
        rv = v3(t)
    elseif t₄ <= t < t₅
        iv = 4
        rv = v4(t)
    elseif t₅ <= t <= t₆
        iv = 5
        rv = v5(t)
    end
    println("iv ", iv, " : ", rv)
    return rv
end

# calc spline x data for plotting
r1 = range(t₁, t₂, 100)
r2 = range(t₂, t₃, 100)
r3 = range(t₃, t₄, 100)
r4 = range(t₄, t₅, 100)
r5 = range(t₅, t₆, 100)

# calc spline y data for plotting
y1 = v1.(r1)
y2 = v2.(r2)
y3 = v3.(r3)
y4 = v4.(r4)
y5 = v5.(r5)

rv1 = v(15.0) # vt3 == 362.78       # fine
rv2 = v(16.0) # 393.7           / 395.48973333333356    # fine
rv3 = v(20.0) # vt4 == 517.35       # fine

# The distance covered by the rocket
# between 11s & 16s can be calculated as:



# plot([r1, r2, r3, r4, r5], [v1, v2, v3, v4, v5])
plot(range(t₁,t₆),v)

# (time, height)
# Vector{Tuple{Float64, Float64}} (alias for Array{Tuple{Float64, Float64}, 1})
controlPoints = [
    (t₁, vt1), (t₂, vt2), (t₃, vt3), (t₄, vt4), (t₅, vt5), (t₆, vt6)
]
scatter!(
    controlPoints, markersize=[3, 4, 5, 6, 7, 8], markercolor=[:red, :green, :blue, :orange, :pink, :violet]
)
