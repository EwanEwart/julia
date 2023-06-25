using Luxor

Drawing(1000, 220)

background("grey")


y = 10
for x in 10 .^ range(0, length=100, stop=3)
    global y
    circle(Point(x, y), 2, action = :fill)
    rule(Point(x, y), -π/2, boundingbox=BoundingBox(centered=false))
    y += 2
end

finish()

preview()
