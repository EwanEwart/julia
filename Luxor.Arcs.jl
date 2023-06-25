using Luxor

@drawsvg begin
    background("black")
    sethue("grey")

    # data
    pt1 = Point(100, 200)
    centrePoint = O
    radius = 70
    angle_1 = 0
    angle_2 = 3π / 2
    pt2 = Point(-200,-200)
    # calculated start arc point base on centre & radius by path api
    pt3 = centrePoint + Point(radius,0)

    # new path
    move(pt1)
    # Internally, circular arcs are converted to Bézier curves.
    arc(centrePoint, radius, angle_1, angle_2)
    line(pt2)

    strokepath()

    # show ...
    sethue("blue")
    circle(centrePoint,5,:stroke)

    sethue("red")
    text("pt 1", pt1 + Point(5, -10))
    circle(pt1,5,:stroke)

    sethue("orange")
    text("pt 2", pt2 + Point(5, -10))
    circle(pt2,5,:stroke)

    sethue("green")
    text("pt 3", pt3 + Point(5, -10))
    circle(pt3,5,:stroke)


end

