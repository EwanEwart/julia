# https://juliagraphics.github.io/Luxor.jl/stable/tutorial/basicpath/

# Point
px = py = 10

# Radius
r = 100

# message
m = "Hi, Kate, Pilla & Piff"

# action
a = :stroke

# Luxor to PNG (Cairo c/c++)"
@png begin
    text(m)
    circle(Point(px, py), r, action = a)
end 300 300

# Luxor to SVG
@svg begin
    text(m)
    circle(Point(px, py), r, action = a)
end
