using Plots

# parametrisation
xₜ(t) = sin(t)
yₜ(t) = sin(2t)

plot(xₜ, yₜ, 0, 2π, leg=true, fill=(0,:orange))
