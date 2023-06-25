using Plots

# xt(t) = cos(t)
# yt(t) = sin(t)

xₜ(t) = cos(t)
yₜ(t) = sin(t)

# plot(xt, yt, 0, 2π)
# plot(xₜ, yₜ, 0, 2π)

# no legend, leg
# plot(xt, yt, 0, 2π, leg=false)
plot(xₜ, yₜ, 0, 2π; leg=false)

# plot(xₜ, yₜ, 0, 2π, leg=false, fill=(0,:orange))

p1, p2 = plot(1:2), plot(10:30)

