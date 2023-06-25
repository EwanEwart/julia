using Plots

# litrature
# https://learn.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/graphics/skiasharp/curves/bezierst
# https://www.sciencedirect.com/topics/mathematics/conic-section

# The Conic Bezier Curve
# == The Rational Quadratic Bezier Curve
#
# Quadratic Bezier Curve
# - a start point
# - an end point
# - a control point

# The Rational Quadratic Bezier Curve == Conics
# Conics - can exactly represent segments of any conic section
# hyperpolas, parapolas, ellipses, circles
# - a start point
# - an end point
# - a control point
# - a weight w₁

# points
px₁ = 0
py₁ = 1
py₁ = 681.250

Δ = 21.15*5
px₂ = 0.5
px₂ = 217.600
py₂ = 0
py₂ = 594.400 - Δ
py₂ = 489.600
py₂ = -1.2140522875816993

px₃ = 1
px₃ = 594.486
py₃ = 1
py₃ = 721.450

# weights
#  w₁ > 1 : hyperbola
#  w₁ = 0 : parabola
#  w₁ < 1 : ellipse
w₀ = 1
w₁ = 1
w₂ = 1

# common Denominator of Conic Section
dₜ(t) = w₀*(1-t)^2*t^0 + w₁*2*(1-t)^1*t^1 + w₂*(1-t)^0*t^2
# dₜ(t) = w₀*(1-t)^2*t^0 + w₁*2*(1-t)^1*t^1 + w₂*(1-t)^0*t^2

# X paramatric equation of X coordinates
xₜ(t) = (    (1-t)^2*px₁ + 2*w₁*t*(1-t)*px₂ +    t^2*px₃ ) / dₜ(t)
# xₜ(t) = ( w₀*(1-t)^2*px₀ + 2*w₁*t*(1-t)*px₁ + w₂*t^2*px₂ ) / dₜ(t)

# paramatric equation of Y coordinates
yₜ(t) = (    (1-t)^2*py₁ + 2*w₁*t*(1-t)*py₂ +    t^2*py₃ ) / dₜ(t)
# yₜ(t) = ( w₀*(1-t)^2*py₀ + 2*w₁*t*(1-t)*py₁ + w₂*t^2*py₂ ) / dₜ(t)

# t ϵ [0,1]
plot(xₜ,yₜ,0,1)
scatter!([px₁,px₂,px₃],[py₁,py₂,py₃])
# t₁ = (1 + w₁ + sqrt(w₁^2 - 1)) / (2 + 2w₁)
# t₂ = (1 + w₁ - sqrt(w₁^2 - 1)) / (2 + 2w₁)

# println("t₁ = ", t₁)
# println("t₂ = ", t₂)

